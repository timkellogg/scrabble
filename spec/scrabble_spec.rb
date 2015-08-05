require("rspec")
require("scrabble")

describe("String#scrabble") do
  it("returns a score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end

  it("returns a score for multiple letters") do
    expect("za".scrabble()).to(eq(11))
  end

  it("handles lower or uppercase letters") do
    expect("A".scrabble()).to(eq(1))
  end
end
