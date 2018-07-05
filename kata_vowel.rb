
def vowelize(array)
  new_array = []
  vowels = ["a", "e", "i", "o", "u"]
  for letter in array
    if vowels.include? letter
      new_array << "vowel"
    else
      new_array << letter.upcase
    end
  end
  new_array
end

puts vowelize(("a".."z").to_a)