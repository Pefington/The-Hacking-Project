# frozen_string_literal: true

# gem install json

require 'json'
currencies = JSON.parse(File.read('cryptocurrencies.json'))['currencies'] # => Array
prices = JSON.parse(File.read('prices.json'))['prices']
prices.map!(&:to_f)

def create_hash(array1, array2)
  Hash[array1.zip(array2)] # create hash from two arrays array1.zip(array2).to_h
end

crypto_hash = create_hash(currencies, prices)

def highest_value(hash)
  hash.max_by { |_k, v| v }
end

def lowest_value(hash)
  hash.min_by { |_k, v| v } # group_by { |_k, v| v }.min.last
end

# puts prices.sort

def value_inferior_to(hash, value)
  hash.select { |_k, v| v < value }
end

# puts crypto_hash.select { |k, _v| k == 'EmberCoin' }.to_a

def highest_value_limited_to(hash, value)
  hash_result = value_inferior_to(hash, value)
  highest_value(hash_result)
end

# puts create_hash(currencies, prices)
# puts highest_value(crypto_hash)
# puts lowest_value(crypto_hash)
# puts value_inferior_to(crypto_hash, 6000)
# puts highest_value_limited_to(crypto_hash, 6000)
