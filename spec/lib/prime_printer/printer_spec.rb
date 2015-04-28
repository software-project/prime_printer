require 'spec_helper'
require 'prime_printer/printer'

describe PrimePrinter::Printer do
  let(:header){ [1, 2, 3] }
  subject{
    data = double('data')
    allow(data).to receive(:get_element_at).and_return '1'
    PrimePrinter::Printer.new header, data
  }

  context '#get_header' do
    it 'should setup header' do
      expect(subject.get_header).to include(*header)
      expect(subject.get_header).to include('')
    end
  end

  context '#get_rows' do
    it 'should have as many rows as header elements' do
      expect(subject.get_rows.size).to eq(header.size)
    end

    it 'should have a row of header + header size elements' do
      expect(subject.get_rows.first.size).to eq(4)
    end

    it 'should add elements from data' do
      expect(subject.get_rows.first).to include('1')
    end

    it 'should add header to row' do
      expect(subject.get_rows[2]).to include(3)
    end
  end
end
