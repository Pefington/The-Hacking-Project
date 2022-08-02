require 'bundler'
Bundler.require

require 'nokogiri'
require 'open-uri'

# This class holds the initial (main) URL to scrape
class MainURL
  attr_accessor :url, :data, :urls, :cities

  def initialize
    @url = 'http://annuaire-des-mairies.com/val-d-oise.html'
    @data = Nokogiri::HTML(URI.parse(@url).open)
    @urls = cities_urls
    @cities = cities_names
  end

  def cities_urls
    hrefs = @data.css('a.lientxt').map { |a| a['href'][1..] }
    hrefs.map { |href| "https://annuaire-des-mairies.com#{href}" }
  end

  def cities_names
    @data.css('a.lientxt').map(&:text)
  end
end
