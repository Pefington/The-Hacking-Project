def stairwaycase
  step = 0
  turns = 0
  while step < 10
    result = rand(7)
    case result
    when 5 || 6
      step += 1
      # puts "Tu avances d'une marche, tu es désormais sur la marche n° #{step}"
    when 1
      if step.zero?
        # puts 'Tu as fait un 1 mais tu ne peux pas descendre, tu restes devant les escaliers'
      else
        step -= 1
        # puts "Tu descends d'une marche, tu es désormais sur la marche n° #{step}"
      end
    when 2 || 3 || 4
      # puts "Tu ne bouges pas, tu es toujours sur la marche n° #{step}"
    end
    turns += 1
  end
  turns
end

def average_finish_time(number)
  iteration = 0
  number.times do
    iteration += stairwaycase
  end
  puts iteration / number
end

average_finish_time(100)
