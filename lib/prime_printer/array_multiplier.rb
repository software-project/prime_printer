module PrimePrinter
  class OutOfRangeError < StandardError; end
  class ArrayMultiplier
    def initialize data
      @data = data
    end

    # Multiplies elements at choosen position
    def get_element_at column, row
      raise OutOfRangeError if column >= @data.size || row >= @data.size
      @data[column] * @data[row]
    end
  end
end

