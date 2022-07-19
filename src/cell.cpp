#include "cell.h"

#include <cassert>
#include <iostream>
#include <string>
#include <optional>
#include <stack>

#include "sheet.h"

std::vector<Position> Cell::GetReferencedCells() const {
  return impl_->GetReferencedCells();
}

Cell::Cell(Sheet& sheet)
    : impl_(std::make_unique<detail::EmptyImpl>())
    ,sheet_(sheet)
{}

Cell::~Cell() {}

void Cell::Set(std::string text) {
  std::unique_ptr<detail::Impl> impl;
  if (text.empty()) {
    impl = std::make_unique<detail::EmptyImpl>();
  }
  else if (text.size() > 1 && text[0] == FORMULA_SIGN) {
    impl = std::make_unique<detail::FormulaImpl>(sheet_,std::move(text));
  }
  else {
    impl = std::make_unique<detail::TextImpl>(std::move(text));
  }
  if (CheckCycles(*impl)) {
    throw CircularDependencyException("");
  }
  impl_ = std::move(impl);
  for (Cell* outgoing : childs_) {
     outgoing->parents_.erase(this);
  }
  childs_.clear();
  for (const auto& pos : impl_->GetReferencedCells()) {
  Cell* outgoing = sheet_.GetCellPtr(pos);
  if (!outgoing) {
    sheet_.SetCell(pos, "");
    outgoing = sheet_.GetCellPtr(pos);
  }
  childs_.insert(outgoing);
    outgoing->parents_.insert(this);
  }
  ClearCache();
}

void Cell::ClearCache() {
  impl_->ClearCache();
  for (Cell* incoming : parents_) {
    incoming->ClearCache();
  }
}

bool Cell::CheckCycles(const detail::Impl& new_impl) const {
  if (new_impl.GetReferencedCells().empty()) {
    return false;
  }
  std::unordered_set<const Cell*> referenced;
  for (const auto& pos : new_impl.GetReferencedCells()) {
    referenced.insert(sheet_.GetCellPtr(pos));
  }
  std::unordered_set<const Cell*> visited;
  std::stack<const Cell*> to_visit;
  to_visit.push(this);
  while (!to_visit.empty()) {
    const Cell* current = to_visit.top();
    to_visit.pop();
    visited.insert(current);
    if (referenced.find(current) != referenced.end()) {
      return true;
    }
    for (const Cell* incoming : current->parents_) {
      if (visited.find(incoming) == visited.end()) {
        to_visit.push(incoming);
      }
    }
}

    return false;
}

void Cell::Clear() {
  impl_ = std::make_unique<detail::EmptyImpl>();
}

Cell::Value Cell::GetValue() const {
  return impl_->GetValue();
}

std::string Cell::GetText() const {
  return impl_->GetText();
}

namespace detail {
  FormulaImpl::FormulaImpl(const SheetInterface& sheet,const std::string& expression)
        : sheet_(sheet) {
    formula_ptr_ = ParseFormula(expression.substr(1));
  }

  CellInterface::Value  FormulaImpl::GetValue() {
    if (!cache_) {
      cache_ = formula_ptr_->Evaluate(sheet_);
    }
    auto value = formula_ptr_->Evaluate(sheet_);
    if (std::holds_alternative<double>(value)) {
      return std::get<double>(value);
     }
    return std::get<FormulaError>(value);
  }

  std::string FormulaImpl::GetText() const  {
    return FORMULA_SIGN + formula_ptr_->GetExpression();
  }

  void FormulaImpl::ClearCache(){
    cache_.reset();
  }

  std::vector<Position> FormulaImpl::GetReferencedCells() const {
    return formula_ptr_->GetReferencedCells();
  }

  TextImpl::TextImpl(const std::string &text) : text_(std::move(text)) {}

  CellInterface::Value  TextImpl::GetValue() {
    if (text_[0] == ESCAPE_SIGN) {
      return text_.substr(1);
    }
    return text_;
  }

  std::string TextImpl::GetText() const {
    return text_;
  }
}
