require 'httparty'
require 'json'

def generate_url(limit = 1)
  "https://api.coinmarketcap.com/data-api/v3/cryptocurrency/listing?limit=#{limit}&convert=USD"
end

def get_limit(url)
  response = HTTParty.get(url).body
  JSON.parse(response)['data']['totalCount']
end

def url
  get_limit(generate_url)
end

def data(limit)
  response = HTTParty.get(generate_url(limit)).body
  JSON.parse(response)['data']['cryptoCurrencyList']
end

def json(data)
  File.write('cryptos.json', JSON.pretty_generate(data))
end

def crypto_scraper
  limit = url
  data = data(limit)
  cryptos = []
  limit.to_i.times do |i|
    currency = data[i]['symbol']
    price =  data[i]['quotes'][0]['price']
    puts "#{i + 1} of #{limit} currencies scraped - #{currency} => #{price}"
    cryptos << { currency => price }
  end
  json(cryptos)
  print File.read('cryptos.json')
end

crypto_scraper
