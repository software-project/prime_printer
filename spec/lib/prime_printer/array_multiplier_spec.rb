require 'spec_helper'
require 'prime_printer/array_multiplier'

describe PrimePrinter::ArrayMultiplier do
  subject {PrimePrinter::ArrayMultiplier.new [1,2,3]}

  context '#get_element_at' do
    it 'returns propper result for element in range' do
      expect(subject.get_element_at 0, 0).to eq(1)
      expect(subject.get_element_at 1, 2).to eq(6)
      expect(subject.get_element_at 2, 2).to eq(9)
    end

    it 'raises an error if element is out of range' do
      expect{subject.get_element_at 3, 0}.to raise_error(PrimePrinter::OutOfRangeError)
    end
  end
end
