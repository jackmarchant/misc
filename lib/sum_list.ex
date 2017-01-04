defmodule SumList do
  @moduledoc """
    This module contains a function to sum any numbers in a list
  """

  @doc """
    This function will add a list of numbers together recursively

    Examples:
      iex> SumList.sum([1, 2, 3])
      6
  """
  def sum(list) do
    _sum(list, 0)
  end

  # Private function to return early when the list is empty
  defp _sum([], total) do
    total
  end

  # Private function to sum the first number in the list
  # with the current total, and sum the rest
  # head - first item from the list
  # tail - the rest of the list
  # Example: [head|tail] = [1, [2, 3]]
  defp _sum([head|tail], total) do
    _sum(tail, head + total)
  end

end