
def translate(str)
  words = str.split(" ")
  words = words.map{ |word| translate_word(word)}
  return words.join(" ")
end

def translate_word(str)
  new_str = str.chars.rotate(num_starting_con(str)).join
  return new_str << "ay"
end

def num_starting_con(str)
  vowels = ["a","e","i","o","u"]
  # count the number of consonants
  count = 0
  str.each_char do |letter|
    if vowels.include?(letter)
      break
    elsif letter == "q" # q is always followed by a u
      count += 2
      break
    end
    count +=1
  end
  return count
end
