defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    words = sentence |> String.downcase() |>
      # Remove specified punctuation types
      String.replace(~r/[:@&!$€%^,]/, "") |>
      # Split the string into a list of words
      String.split([" ", "_"], trim: true)

    # For each element in the words list, return a {word: count} to be added to the map
    # The Enum.count is actually run for each of the occurences of the word so not
    # very efficient on longer strings
    Enum.into(words, %{}, fn (word) -> {word, Enum.count(words, &(&1 == word))} end)
  end
end
