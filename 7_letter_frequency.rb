# Hash Exercise

def letter_frequency(text)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a
  freq = {}

  text.each_char { |char|
    if chars.include?(char)
      unless freq.key?(char)
        freq[char] = 1
      else
        freq[char] += 1
      end
    end
  }

  return freq
end

text = gets.chomp
p letter_frequency(text)

