require_relative 'view'
require_relative 'gossip'

# This class is the controller of our MVC app.
class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    puts "\nYou chose to create a gossip."
    Gossip.new(params[:author], params[:content]).save
  end

  def display_gossips
    puts "\nYou chose to display all the gossips."
    @view.display_gossips
  end
end
