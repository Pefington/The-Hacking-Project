# This class displays information to the user.
class View
  def create_gossip
    puts "\nPlease enter the author of the gossip:"
    gossip_author = gets.chomp
    puts "\nPlease enter the content of the gossip:"
    gossip_content = gets.chomp
    { author: gossip_author, content: gossip_content }
  end
end
