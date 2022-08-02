# def say_hello(first_name ="")
#   puts "Bonjour #{first_name}"
# end


# def ask_first_name
#   puts "Quel est ton prénom ?"
#   print ">"
#   gets.chomp
# end

# first_name = ask_first_name
# say_hello(first_name)

def say_hello(first_name)
  puts "Yo #{first_name}, 'sup?"
end

def ask_first_name
  print "What's your name? "
  gets.chomp
end

first_name = ask_first_name
say_hello(first_name)
