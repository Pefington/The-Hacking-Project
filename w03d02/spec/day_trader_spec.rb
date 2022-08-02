require_relative '../lib/day_trader'

describe 'the day_trader method' do
  it 'should return the lowest price' do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq('Buy on day 2 and sell on day 5 for a profit of 12€')
  end
end
