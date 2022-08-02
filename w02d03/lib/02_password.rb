def signup
  puts 'Bonjour, veuillez créer votre mot de passe'
  print '>'
  gets.chomp
end

def login(password)
  password_try = ''
  while password_try != password
    puts 'Veuillez renseigner votre mot de passe'
    password_try = gets.chomp
  end
end

def welcome_screen
  puts "Bienvenue sur votre espace secret, voici les différentes info récoltées jusqu'à présent"
  puts "GitHub c'est horrible jusqu'au moment où on réussit"
  puts 'Photo de Chris et Pierre qui galèrent'
end

def perform
  password_final = signup
  login(password_final)
  welcome_screen
end

perform
