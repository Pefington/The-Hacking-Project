print "What's your birth year? "
birth_year = gets.to_i
n = birth_year
puts ''
(Time.now.year - birth_year - 1).times do
  if (Time.now.year - (n + 1)) == ((n + 1) - birth_year)
    puts "#{Time.now.year - (n + 1)} year(s) ago, you were half your age today. \n"
  else
    puts "#{Time.now.year - (n + 1)} year(s) ago, you were #{(n + 1) - birth_year} year(s) old. \n"
  end
  n += 1
end

# puts "Bonjour, c'est quoi ton année de naissance ?"
# print '>'
# birth_year = gets.to_i
# increment = birth_year + 1
# while increment < 2022
#   if 2022 - increment == increment - birth_year
#     puts "Il y a #{2022 - increment} ans tu avais la moitié de l'âge que tu as aujourd'hui"
#   else
#     puts "Il y a #{2022 - increment} ans tu avais #{increment - birth_year} ans"
#   end
#   increment += 1
# end
