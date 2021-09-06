class Spell
  attr_reader :word_bank

  def initialize
    @word_bank = ["hello", "word"]
  end

  def check(string)

    words = string.split(" ")

    new_words = words.map { |word|

      if word_bank.include?(word.downcase)
        word = word
      else
        word = "~#{word}~"
      end

    }

    return new_words.join(" ")

  end

end
