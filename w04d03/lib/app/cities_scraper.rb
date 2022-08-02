require 'bundler'
Bundler.require

require_relative '../main_url'
require_relative '../emails'
require_relative '../format_data'

# This class is the main scraper
class CitiesScraper
  attr_accessor :cities, :emails, :list

  def initialize
    @cities = MainURL.new.cities
    @emails = Emails.new.emails
    @list = zip_list
    FormatData.new(@list).json
  end

  def zip_list
    list = []
    @cities.each_with_index { |city, i| list << { city => @emails[i] } }
    list
  end
end
