require 'time'

# This class represents a calendar event.
class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 24 * 60 * 60
  end

  def end_date
    @start_date + @duration * 60
  end

  def past?
    @start_date < Time.now
  end

  def future?
    !past?
  end

  def soon?
    @start_date - Time.now < 30 * 60
  end

  def to_s
    puts "\nEvent: #{@title}"
    puts "Start date: #{@start_date.strftime('%d/%m/%Y at %H:%M:%S')}"
    puts "Duration: #{@duration} minutes"
    puts "Attendees: #{@attendees.join(', ')}"
  end
end
