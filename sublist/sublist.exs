defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    case a do
      _ when a == b -> :equal
      [] -> :sublist
      _ -> :err
    end
  end
end
