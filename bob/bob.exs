defmodule Bob do
  def hey(input) do
    whatever = "Whatever."
    cond do
        # Test for empty input
        String.trim(input) == "" -> "Fine. Be that way!"
        # Test for questions
        String.ends_with?(input, "?") -> "Sure."
        # Test for anything without any letters
        String.upcase(input) == String.downcase(input) -> whatever
        # Test for shouting (all letters are capitals)
        String.upcase(input) == input -> "Whoa, chill out!"
        # Default case
        true -> whatever
    end
  end
end
