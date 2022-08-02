require_relative './event'

# This class helps create a calendar event.
class EventCreator < Event
  def self.create_event
    puts "\nAyoo what is the event's title?"
    title = gets.chomp
    puts "\nWhen is the event? (DD/MM/YYYY HH:MM)"
    start_date = gets.chomp
    puts "\nHow long will the event last? (in minutes)"
    duration = gets.to_i
    puts "\nWho is attending?"
    attendees = gets.chomp.split(', ')
    event = Event.new(start_date, duration, title, attendees)
    puts event.to_s
    event
  end
end
