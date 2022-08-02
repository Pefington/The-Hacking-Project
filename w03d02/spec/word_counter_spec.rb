require_relative '../lib/word_counter'

describe 'the word_counter method' do
  it "should return a hash of the number of occurences of a dictionary's words in a string" do
    expect(word_counter('brown fox fox fox three !!!', %w[brown fox])).to eq({ 'brown' => 1, 'fox' => 3 })
  end
end
