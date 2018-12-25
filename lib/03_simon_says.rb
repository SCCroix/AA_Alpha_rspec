require "byebug"

def echo (str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n=2)
  new_str = ""
  n.times do |num|
    new_str += str
    new_str += " " unless num == n - 1
  end
  return new_str
end

def start_of_word(str, n)
  return str[0, n]
end

def first_word(str)
  return str.split[0]
end

LITTLE_WORDS = ["and", "or", "the", "over"]

def titleize(str)
  words = str.split
  title_words = []
  words.each_with_index do |word,index|
    if index == 0
      title_words << word.capitalize
    elsif LITTLE_WORDS.include?(word)
      title_words << word
    else
      title_words << word.capitalize
    end
  end
  return title_words.join(" ")
end
