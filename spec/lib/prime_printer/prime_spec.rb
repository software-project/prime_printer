require 'spec_helper'
require 'prime_printer/prime'

describe PrimePrinter::Prime do

  it 'should return empty array if 0 element are required' do
    expect(PrimePrinter::Prime.getPrimes 0).to be_empty
  end

  it 'should return first 1 prime numbers' do
    expect(PrimePrinter::Prime.getPrimes(1)).to eq([2])
  end

  it 'should return first 5 prime numbers' do
    expect(PrimePrinter::Prime.getPrimes(5)).to eq([2,3,5,7,11])
  end
end
