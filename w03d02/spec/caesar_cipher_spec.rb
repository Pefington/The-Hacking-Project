require_relative '../lib/caesar_cipher'

describe 'the caesar_cipher method' do
  it 'should return the same string if the offset is 0' do
    expect(caesar_cipher('abc', 0)).to eq('abc')
  end

  it 'should return the same string if the offset is 26' do
    expect(caesar_cipher('abc', 26)).to eq('abc')
  end

  it 'should return a different string if the offset is 1' do
    expect(caesar_cipher('abc', 1)).to eq('bcd')
    expect(caesar_cipher('ABC', 1)).to eq('BCD')
    expect(caesar_cipher('! ?', 1)).to eq('! ?')
  end

  it 'should return a different string if the offset is 5' do
    expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
  end
end
