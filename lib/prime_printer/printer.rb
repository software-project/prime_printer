module PrimePrinter
  class Printer
    def initialize header, printer
      @header = header
      @printer = printer
    end

    def render
      Terminal::Table.new :headings => get_header, :rows => get_rows
    end

    def get_header
      [''] + @header
    end

    def get_rows
      rows = []
      @header.each_with_index{|element, row_index|
        row = [element]
        @header.size.times{|column_index|
          row << @printer.get_element_at(row_index, column_index)
        }
        rows << row
      }
      rows
    end
  end
end

