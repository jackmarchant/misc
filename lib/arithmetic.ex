defmodule Arithmetic do
  @moduledoc """
    This module contains miscellaneous arithmetic functions,
    such as multiply, add, divide and subtract
  """

  @doc """
    This function will multiply two numbers

    Examples:
      iex> Arithmetic.multiply(3,4)
      12

      iex> Arithmetic.multiply(5, 5)
      25
  """
  def multiply(x, y) do
    x * y
  end

  @doc """
    This function will multiply all numbers in a list

    Examples:
      iex> Arithmetic.multiply([3, 4, 5])
      60

      iex> Arithmetic.multiply([5, 5])
      25
  """
  def multiply(nums) when is_list(nums) do
    Enum.reduce(nums, fn(x, acc) -> x * acc end)
  end

  @doc """
    This function will add two numbers

    Examples:
      iex> Arithmetic.add(3,4)
      7

      iex> Arithmetic.add(5, 5)
      10
  """
  def add(x, y) do
    x + y
  end

  @doc """
    This function will add all numbers in a list

    Examples:
      iex> Arithmetic.add([3, 4, 5])
      12

      iex> Arithmetic.add([5, 5])
      10
  """
  def add(nums) when is_list(nums) do
    Enum.sum(nums)
  end

  @doc """
    This function will divide the first number
    by the second

    Examples:
      iex> Arithmetic.divide(100, 2)
      50.0

      iex> Arithmetic.divide(50, 5)
      10.0
  """
  def divide(x, y) do
    x / y
  end

  @doc """
    This function will divide all the
    numbers in a list

    Examples:
      iex> Arithmetic.divide([100, 2])
      50.0

      iex> Arithmetic.divide([50, 5, 2])
      5.0
  """
  def divide(nums) when is_list(nums) do
    Enum.reduce(nums, fn(x, acc) -> acc / x end)
  end

  @doc """
    This function will get the difference
    between the first and second number

    Examples:
      iex> Arithmetic.difference(3,4)
      -1

      iex> Arithmetic.difference(25, 5)
      20
  """
  def difference(x, y) do
    x - y
  end

  @doc """
    This function will get the difference
    of all numbers in a list

    Examples:
      iex> Arithmetic.difference([3, 4])
      -1

      iex> Arithmetic.difference([25, 5, 3])
      17
  """
  def difference(nums) when is_list(nums) do
    Enum.reduce(nums, fn(x, acc) -> acc - x end)
  end
end
