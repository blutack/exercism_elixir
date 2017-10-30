defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    words = string |>
      # Insert a space before each upper case letter
      String.replace(~r/([[:upper:]])/, " \\1") |>
      # Split the string and remove any empty strings
      String.split(" ", trim: true)

    # For each of our individual word parts, take the first letter and upcase
    Enum.into(words, "", fn(word) -> String.at(word, 0) |> String.upcase() end)
  end
end
