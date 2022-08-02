require 'bundler'
Bundler.require

require 'cities_scraper'

$LOAD_PATH.unshift File.expand_path('lib', __dir__)

CitiesScraper.new.list
