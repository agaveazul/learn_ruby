def echo(saying)
  saying
end

def shout(saying)
  saying.upcase
end

def repeat(saying, n = 2)
sayings = []
n.times do
  sayings << saying
end
sayings.join(" ")
end

def start_of_word(word, n)
  word[0..n-1]
end

def first_word(string)
string.split[0]
end

def titleize(string)
  small_words = ["the", "over", "and"]
  phrase = string.split
  phrase[0] = phrase[0].capitalize
  phrase.map! do |word|
    if small_words.include?(word)
      word
    else word.capitalize
    end
  end
  .join(" ")
end
