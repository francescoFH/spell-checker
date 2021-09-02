require "spell"

describe Spell do

  subject(:spell) { described_class.new }

  it "returns correctly spelled word as it is" do
    expect(spell.check("Hello")).to eq "Hello"
  end

end
