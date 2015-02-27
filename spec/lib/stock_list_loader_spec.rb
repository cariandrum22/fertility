require 'spec_helper'
require 'stock_list_loader'

describe 'StockListLoader' do

  instance = StockListLoader.new('/Users/claude/Workspace/Laboratory/Development/Practice/ruby/fertility/lib/data/tosho_list.txt')

  it 'Check stock_info method' do
    expect(instance.stock_info[0][:code]).to eq 1305
    expect(instance.stock_info[0][:market_section]).to eq 'ETF'
    expect(instance.stock_info[0][:unit]).to eq 10
  end

  it 'Check codes method' do
    expect(instance.codes[0]).to eq 1305
    expect(instance.codes.last).to eq 8987
  end

  it 'Check market_sections method' do
    expect(instance.market_sections[0]).to eq 'ETF'
  end

  it 'Check units method' do
    expect(instance.units[0]).to eq 10
  end

  it 'Check filter_by_market_section method' do
    expect(instance.market_sections.include?('REIT')).to eq true
    instance.filter_by_market_section('ETF')
    expect(instance.market_sections.include?('REIT')).to eq false
  end

end