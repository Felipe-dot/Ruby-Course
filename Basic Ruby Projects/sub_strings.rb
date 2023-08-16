dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dictionary)
    word = word.downcase
    frequencies = Hash.new(0)
  
    dictionary.each do |substring|
      occurrences = word.scan(substring.downcase).length
      frequencies[substring] = occurrences if occurrences > 0
    end
  
    frequencies
  end
  
  word = "Howdy partner, sit down! How's it going?"
  
  result = substrings(word, dictionary)
  puts result
  