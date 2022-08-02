require_relative 'controller'

# This class is the router of our MVC app.
class Router
  def initialize
    @controller = Controller.new
  end

  def run
    puts 'WELCOME TO THE GOSSIP PROJECT!'
    loop do
      puts "\nChoose below:"
      puts "\n1. I would like to create a gossip."
      puts '2. I would like to display all the gossips.'
      puts '3. I would like to delete a gossip.'
      puts '4. I would like to leave the app.'
      print "\n> "
      case gets.to_i
      when 1
        @controller.create_gossip
      when 2
        
      when 4
        puts "\nGoodbye!"
        break
      else
        puts "\nNot a valid selection, please try again.."
      end
    end
  end
end
