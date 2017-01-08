defmodule Printer do
  @moduledoc """
    This module contains a say function for printing a phrase
  """
  import IO

  @doc """
    This function will print a phrase to IO
    along with the current date

    Examples:
      >iex Printer.say('My phrase')
      My Phrase -- Date: 8/1/2017
  """
  def say(phrase) do
    _say(phrase, Date.getDate)
  end

  def _say(phrase, date) do
    Enum.join([phrase, ' -- Date: ', date])
    |> puts
  end

  @doc """
    A phrase must be entered, pattern match on say/0
  """
  def say do
    puts('Please enter a phrase..')
  end

end