require_relative 'lib/event'
require_relative 'lib/event_creator'
require_relative 'lib/user'
require 'pry'

User.new('julie@julie.com', 35)
User.new('jean@jean.com', 23)
User.new('claude@claude.com', 75)

puts User.find_by_email('claude@claude.com')
