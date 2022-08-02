print "What's your birth year? "
n = gets.to_i
puts ''
(Time.now.year - n).times do
  puts n + 1
  n += 1
end

# puts 'Bonjour, quelle est ton année de naissance ?'
# print '>'
# birth_year = gets.to_i
# increment = birth_year
# while increment <= 2022
#   puts increment
#   increment += 1
# end
