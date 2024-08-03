def substrings(text, dict)
    phrases = text.split
    matches = Hash.new(0)
    phrases.each do |phrase|
        dict.each do |word|
            if phrase.downcase.include?(word)
                matches[word] += 1
            end
        end
    end
    return matches
end

if __FILE__ == $0
      dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
      puts substrings("Howdy partner, sit down! How's it going?", dictionary)
end