defmodule ArithmeticTest do
  use ExUnit.Case
doctest Arithmetic

  test "it multiplies two numbers" do
    assert Arithmetic.multiply(3, 4) == 12
  end

  test "it multiplies a list of numbers" do
    assert Arithmetic.multiply([3, 4, 5]) == 60
  end

  test "it adds two numbers" do
    assert Arithmetic.add(5, 5) == 10
  end

  test "it adds a list of numbers" do
    assert Arithmetic.add([5, 5, 5]) == 15
  end

  test "it divides two numbers" do
    assert Arithmetic.divide(25, 5) == 5.0
  end

  test "it divides a list of numbers" do
    assert Arithmetic.divide([25, 5, 2]) == 2.5
  end

  test "it gets the difference between two numbers" do
    assert Arithmetic.difference(10, 5) == 5
  end

  test "it gets the difference between a list of numbers" do
    assert Arithmetic.difference([10, 5, 3]) == 2
  end
end
