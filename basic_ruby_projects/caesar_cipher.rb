def cipher(string, offset)
  alphabet_downcase = "a".upto("z").to_a
  alphabet_upcase = "A".upto("Z").to_a
  ciphered = String.new

  string.each_char do |char|
    upcase = char.upcase.equal?(char)
    i = upcase ? alphabet_upcase.find_index(char) : alphabet_downcase.find_index(char)
    ciphered.concat(char) && next if i.nil?

    off = i - offset
    if upcase
      ciphered.concat(alphabet_upcase[off])
    else
      ciphered.concat(alphabet_downcase[off])
    end
  end
end

p cipher("Pen pineapple apple pen", 1)
