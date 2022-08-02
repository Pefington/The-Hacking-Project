def multiple_of_3_or_5?(int)
  (int % 3).zero? || (int % 5).zero?
end

def sum_of_3_or_5_multiples(int)
  return 'Please enter a positive integer' if int.class != Integer || int.negative?

  (1...int).select { |n| multiple_of_3_or_5?(n) }.sum
end
