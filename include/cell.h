#pragma once

#include "common.h"
#include "formula.h"
#include <functional>
#include <unordered_set>
#include <optional>

class Sheet;
class Cell;


namespace detail {

  class Impl {
    public:
      virtual ~Impl() {}
      virtual CellInterface::Value GetValue() = 0;
      virtual std::string GetText() const = 0;
      virtual std::vector<Position> GetReferencedCells() const = 0;
      virtual void ClearCache() = 0;
  };

  class EmptyImpl : public Impl {
    public:
      EmptyImpl() {}
      std::string GetText() const override {return {};}
      CellInterface::Value GetValue() override {return 0.0;}
      std::vector<Position> GetReferencedCells() const override { return {};}
      void ClearCache() override {}
  };

  class TextImpl : public Impl {
    public:
      explicit TextImpl(const std::string& text);
      CellInterface::Value GetValue()  override;
      std::string GetText() const override;
      std::vector<Position> GetReferencedCells() const override {return {};}
      void ClearCache() override {}
    private:
      std::string text_;
  };

  class FormulaImpl : public Impl {
    public:
      explicit FormulaImpl(const SheetInterface& sheet,const std::string& expression );
      CellInterface::Value GetValue()  override;
      std::string GetText() const override;
      void ClearCache() override;
      std::vector<Position> GetReferencedCells() const override;
    private:
      std::unique_ptr<FormulaInterface> formula_ptr_;
      const SheetInterface& sheet_;
      mutable std::optional<FormulaInterface::Value> cache_;
  };
} //namespace detail


class Cell : public CellInterface {
  public:
    explicit Cell(Sheet& sheet);
    ~Cell();

    void Set(std::string text);
    void Clear();

    Value GetValue() const override;
    std::string GetText() const override;
    std::vector<Position> GetReferencedCells() const override;
  private:
    bool CheckCycles(const detail::Impl& impl) const;
    void ClearCache();
    std::unique_ptr<detail::Impl> impl_;
    Sheet& sheet_;
    std::unordered_set<Cell*> parents_;
    std::unordered_set<Cell*> childs_;
};
