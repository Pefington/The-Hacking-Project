require 'dotenv'
require 'tweetkit'

Dotenv.load('.env')

client = Tweetkit::Client.new do |config|
  config.consumer_key         = ENV['CONSUMER_KEY']
  config.consumer_secret      = ENV['CONSUMER_SECRET']
  config.access_token         = ENV['ACCESS_TOKEN']
  config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
  config.bearer_token         = ENV['BEARER_TOKEN']
end

response = client.tweet(1483403685929517056)
puts response

# client.update('Mon premier tweet en Ruby !!!!')
# get from user
# def collect_with_max_id(collection=[], max_id=nil, &block)
#   response = yield(max_id)
#   collection += response
#   response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
# end

# def client.get_all_tweets(user)
#   collect_with_max_id do |max_id|
#     options = {count: 200, include_rts: true}
#     options[:max_id] = max_id unless max_id.nil?
#     user_timeline(user, options)
#   end
# end

# client.get_all_tweets("sferik")
