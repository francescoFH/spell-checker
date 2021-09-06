require "spell"

describe Spell do

  subject(:spell) { described_class.new }

  context "correctly spelled word(s)" do
    it "returns correctly spelled word as it is" do
      expect(spell.check("Hello")).to eq "Hello"
    end

    it "returns words of a sentence as they are if they match entries in the word_bank" do
      expect(spell.check("Hello word")).to eq "Hello word"
    end
  end

  context "incorrectly spelled word(s)" do
    it "returns a word surrounded by ~ if it doesn't match a word in the word_bank array" do
      expect(spell.check('a')).to eq "~a~"
    end
  end

  it "contains word bank when initialised" do
    expect(spell.word_bank).to be_a Array
  end

  it "return error if input contains anything other than a string" do
    expect(spell.check(1)).to eq "invalid input"
  end

end
