def substrings(string, dict)
  dict.reduce(Hash.new(0)) do |acc, word|
    occurences = count_occurences(string, word) # alternatively, with regex: string.scan(/#{word.downcase}/).count
    acc[word] += occurences if occurences > 0
    acc
  end
end

def count_occurences(string, substring)
  occs = 0
  index = -1
  loop do
    index = string.index(substring, index+1)
    if index.nil?
      break
    end
    occs += 1
  end
  occs
end
