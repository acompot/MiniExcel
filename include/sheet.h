#pragma once

#include "cell.h"
#include "common.h"
#include <functional>
#include <unordered_map>

namespace detail {
  struct Hasher{
    public:
      size_t operator() (const Position& pos) const;
    private:
      std::hash<int> i_hasher;
    };
}

class Sheet : public SheetInterface {
  public:
    using MyExel = std::unordered_map<Position, std::unique_ptr<Cell>, detail::Hasher>;
    ~Sheet();
    void SetCell(Position pos, std::string text) override;
    const CellInterface* GetCell(Position pos) const override;
    CellInterface* GetCell(Position pos) override;
    void ClearCell(Position pos) override;
    Size GetPrintableSize() const override;
    void PrintValues(std::ostream& output) const override;
    void PrintTexts(std::ostream& output) const override;
    const Cell* GetCellPtr(Position pos) const;
    Cell* GetCellPtr(Position pos);
  private:
    MyExel cells_;
};
