require_relative 'spec_helper'

describe SheetRender do

  let(:sheet) { [['Id','Name'], ['1','Alex'], ['2','Hannah']] }

  it 'returns the longest value for a given column' do
    expect(SheetRender.new(sheet).max_column_width(0)).to eq 2
  end

  it 'formats all header cells to fit the longest value for a given column' do
    SheetRender.new(sheet)
  end

  # it 'formats cells to match width of widest record/header value ' do
  #   puts sheet
  # end
end
