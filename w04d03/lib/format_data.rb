require 'bundler'
Bundler.require

require 'json'
require 'csv'
require_relative 'emails'

# This class deals with writing out the list in several formats
class FormatData
  attr_accessor :list, :json, :csv

  def initialize(list)
    @list = list
    @json = write_json
    @csv = write_csv
  end

  def write_json
    File.write('../db/emails.json', JSON.pretty_generate(list))
  end
end
