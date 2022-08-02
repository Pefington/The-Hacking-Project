print "What's your birth year? "
birth_year = gets.to_i
n = birth_year
puts ''
(Time.now.year - n).times do
  puts "In #{n + 1} you were #{(n + 1) - birth_year} years old."
  n += 1
end

# puts "Bonjour, c'est quoi ton année de naissance ?"
# print '>'
# birth_year = gets.to_i
# increment = birth_year
# while increment < 2022
#   puts "En #{increment + 1} tu avais #{increment + 1 - birth_year} ans"
#   increment += 1
# end
