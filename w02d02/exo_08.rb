print "What's your number? "
n = gets.to_i
(n + 1).times do
  puts n
  n -= 1
end

# puts 'Bonjour, donne moi un nombre'
# print '>'
# reach_number = gets.to_i
# until reach_number == -1
#   puts reach_number
#   reach_number -= 1
# end
