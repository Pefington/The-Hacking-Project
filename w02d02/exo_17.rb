# puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
# print '>'
# reach_number = gets.to_i
# increment = 1
# if reach_number > 25
#   puts 'Nombre trop élevé'
# else
#   puts 'Voici la pyramide'
#   until increment > reach_number
#     puts ' ' * (reach_number - increment) + '#' * (2 * increment - 1)
#     increment += 1
#   end
# end

print 'How many floors do you want? (1-25): '
floors = gets.to_i
if floors > 25 || floors < 1
  puts 'I said 1 to 25 yo! RTFM'
  return
else
  floors.times do |i|
    puts ' ' * (floors - (i + 1)) + '#' * (2 * (i + 1) - 1)
  end
end
