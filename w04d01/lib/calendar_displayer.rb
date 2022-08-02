require_relative './event'
require 'date'
require 'pry'
require 'time'

# This class displays a calendar with events
class CalendarDisplayer
  attr_accessor :events

  def initialize(events)
    @events = events
  end

  COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze

  def self.days_in_month(month, year)
    return 29 if month == 2 && Date.gregorian_leap?(year)

    COMMON_YEAR_DAYS_IN_MONTH[month]
  end

  def self.draw_calendar
    days = days_in_month(Date.today.month, Date.today.year)
    puts days
    d = 1
    until d == days
      5.times do |i|
        puts ('T' + '-' * 10) * 7 + 'T'
        puts ("|" + "#{d}" ' ' * 10) * 7 + "|"
        puts ('|' + ' ' * 10) * 8
        puts ('|' + ' ' * 10) * 8
        puts ('|' + ' ' * 10) * 8
        puts ('|' + ' ' * 10) * 8
        puts ('|' + ' ' * 10) * 8
        d += 1
      end
    end
  end
end

CalendarDisplayer.draw_calendar
