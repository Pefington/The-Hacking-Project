def word_counter(string, dictionary)
  string.split.select { |word| dictionary.include?(word) }.tally
end

shakespeare = File.read('shakespeare.txt')
dictionary = File.read('grownups_words.txt').split

puts word_counter(shakespeare, dictionary)
