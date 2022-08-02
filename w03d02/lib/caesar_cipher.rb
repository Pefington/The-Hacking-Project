def caesar_cipher(string, offset)
  uppers = ('A'..'Z').to_a
  lowers = ('a'..'z').to_a
  code = string.chars.map do |char|
    char = lowers[(lowers.index(char) + offset) % 26] if lowers.include? char
    char = uppers[(uppers.index(char) + offset) % 26] if uppers.include? char
    char
  end
  code.join
end
