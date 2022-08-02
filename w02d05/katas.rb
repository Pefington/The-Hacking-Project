def filter_array(arr)
  arr.select { |x| x.is_a? Integer }
end
