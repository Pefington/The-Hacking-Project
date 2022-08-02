require 'bundler'
Bundler.require

require_relative 'main_url'

# This class gets the emails from the cities list
class Emails
  attr_accessor :emails

  def initialize
    @emails = cities_emails
  end

  def email_node(url)
    Nokogiri::HTML(URI.parse(url).open).xpath(
      '//section[2]//tr[4]/td[2]'
    ).text
  end

  def cities_emails
    urls = MainURL.new.urls
    emails = []
    urls.each_with_index do |url, i|
      print "\nScraping #{i + 1} out of #{urls.size} emails: "
      email = email_node(url)
      emails << (email.empty? ? 'No email listed.' : email)
      print "#{emails[-1]}\n"
    end
    emails
  end
end
