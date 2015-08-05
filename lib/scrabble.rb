class String
  define_method(:scrabble) do

    # Create hashes that hold the scores of letters
    scrabble_score_values = {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1,
      "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" =>4, "h" => 4, "v" => 4, "w" => 4, "y" => 4, "k" => 5, "j" => 8,
      "x" => 8, "q" => 10, "z" => 10}

    # Convert the input into letters
    letters = self.downcase.split("")

    # Create a var to hold the score
    scrabble_score = 0

    # Loop thru each letter
    letters.each() do |letter|

      # Get the value from the array that matches the score
      score = scrabble_score_values[letter]

      # Add the value of the letter to the score
      scrabble_score = scrabble_score + score
    end

    scrabble_score

  end
end
