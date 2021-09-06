class Spell
  attr_reader :word_bank

  def initialize
    @word_bank = ["Hello"]
  end

  def check(string)
    if word_bank.include?(string)
      return string
    else
      return "~#{string}~"
    end
  end

end
