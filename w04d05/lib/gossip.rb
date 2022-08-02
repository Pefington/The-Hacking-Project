require 'json'

# This class interacts with the gossip.json "database".
class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    json = JSON.parse(File.read('./db/gossip.json'))
    gossip = { @author => @content }
    json << gossip
    File.write('./db/gossip.json', JSON.pretty_generate(json))
  end

  def display_gossips
    json = JSON.parse(File.read('./db/gossip.json'))
    json.each do |gossip|
      puts "\nAuthor: #{gossip.keys.first}"
      puts "Content: #{gossip.values.first}"
    end
  end
end
