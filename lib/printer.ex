defmodule Printer do
  import IO

  @doc """
    This function will print a phrase to IO
    along with the current date
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