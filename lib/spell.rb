class Spell
  attr_reader :word_bank

  def initialize
    @word_bank = ["hello", "word", "i", "love", "coding"]
  end

  def check(string)

    if string.is_a? String
      words = string.split(" ")

      new_words = words.map { |word|
        if word_bank.include?(word.downcase)
          word = word
        else
          word = "~#{word}~"
        end
      }

      return new_words.join(" ")
    else
      return "invalid input"
    end

  end

end
