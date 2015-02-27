require 'spec_helper'
require 'stock'

describe 'Stock' do

  instance = Stock.new(8604, :t, 100)

  instance.add_price('2011-07-01', 402, 402, 395, 397, 17495700)
  instance.add_price('2011-07-04', 402, 404, 400, 403, 18819300)
  instance.add_price('2011-07-05', 402, 408, 399, 401, 20678000)

  it 'Check base feature' do
    expect(instance.code).to    eq 8604
    expect(instance.market).to  eq :t
    expect(instance.unit).to    eq 100
  end

  it 'Check add_price method' do
    expect(instance.prices[0][:date]).to eq '2011-07-01'
    expect(instance.prices[1][:open]).to eq 402
    expect(instance.prices[2][:high]).to eq 408
  end

  it 'Check map_price method' do
    extracted_dates = instance.map_prices(:date)
    extracted_open_prices = instance.map_prices(:open)

    expect(extracted_dates[1]).to       eq '2011-07-04'
    expect(extracted_open_prices[0]).to eq 402
  end

  it 'Check alias methods' do
    expect(instance.dates[0]).to        eq '2011-07-01'
    expect(instance.open_prices[1]).to  eq 402
    expect(instance.high_prices[2]).to  eq 408
    expect(instance.low_prices[0]).to   eq 395
    expect(instance.close_prices[1]).to eq 403
    expect(instance.volumes[2]).to      eq 20678000
  end

end