require 'pry'

def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

  words = string.split(" ")
  words_new = []

  words.each do |word|

  chars = []
  word.each_char { |ch| chars << ch }

  chars_new = []
  word.each_char { |ch| chars_new << ch }

  position_counter = 0
  loop_counter = 0
  q_counter = 0

  chars.each do |ch|
    if loop_counter == 0 && vowels.include?(ch)
      if ch == "u" && q_counter == 1
        chars_new << "u"
        chars_new << "a"
        chars_new << "y"
        chars_new.delete_at(0)
        loop_counter = 1
      else
        chars_new << "a"
        chars_new << "y"
        loop_counter = 1
      end
    elsif loop_counter == 0 && consonants.include?(ch)
    chars_new.delete_at(0)
    chars_new << ch
    q_counter += 1 if ch == "q"
    end
  end

  words_new << chars_new.join
  end

  words_new.join(" ")

end
