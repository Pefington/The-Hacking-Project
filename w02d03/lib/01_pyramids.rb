# def full_pyramid
#   floors = 0
#   until floors >= 1 && floors <= 25
#     print 'Choose a height between 1 and 25 floors: '
#     floors = gets.to_i
#   end
#   floors.times do |increment|
#     puts ' ' * (floors - increment) + '#' * (2 * increment + 1)
#   end
# end

# def wtf_pyramid
#   floors = 0
#   until floors >= 1 && floors <= 25
#     print 'Choose a height between 1 and 25 floors: '
#     floors = gets.to_i
#   end
#   (floors/2 +1).times do |increment|
#       puts ' ' * (floors - increment) + '#' * (2 * increment + 1)
#   end
#   (floors/2).times do |increment_2|
#       puts ' ' * (increment_2 + floors / 2 + 2) + '#' * (floors - 2 * increment_2 - 2)
#   end
# end

# wtf_pyramid
def prompt_floors
  floors = 0
  until floors >= 1 && floors <= 25
    print 'Choose a height between 1 and 25 floors: '
    floors = gets.to_i
  end
  floors
end

def half_pyramid_pef(floors)
  floors.times do |i|
    puts ' ' * (floors - (i + 1)) + '#' * (i + 1)
  end
end

def perform
  half_pyramid_pef(prompt_floors)
end

perform
# prompt_floors

# half_pyramid_pef(prompt_floors)

# def full_pyramid_pef
#   floors = 0
#   until floors >= 1 && floors <= 25
#     print 'Choose a height between 1 and 25 floors: '
#     floors = gets.to_i
#   end
#   floors.times do |i|
#     puts ' ' * (floors - (i + 1)) + '#' * (2 * (i + 1) - 1)
#   end
# end

# def wtf_pyramid_pef
#   floors = 0
#   until floors >= 1 && floors <= 25 && floors.odd?
#     print 'Choose an ODD height between 1 and 25 floors: '
#     floors = gets.to_i
#     steps = floors / 2 - 1
#   end
#   steps.times do |i|
#     puts ' ' * (steps - (i + 1)) + '#' * (2 * (i + 1) - 1)
#   end
#   (steps - 1).times do |i|
#     puts ' ' * (i + 1) + '#' * ((2 * steps) - (2 * i) - 3)
#   end
# end
