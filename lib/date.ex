defmodule Date do
  @moduledoc """
    This module contains functions useful for extracting
    a date from the calendar module provided by Erlang
  """

  @doc """
    This function will get the current date in the
    following format:
      - 8/1/2017
  """
  def getDate do
    :calendar.local_time()
    |> date
    |> fmt
  end

  @doc """
    This function will get the date from a tuple
    containing the date and time
  """
  def date({d, _}) do
    d
  end

  @doc """
    This function will construct the date object as a string,
    including a separator for each date integer.

    Examples:
      iex> Date.fmt({2017, 1, 8}, "-")
      "8-1-2017"
  """
  def fmt(d, s \\ "/") do
    Enum.join([
      elem(d, 2), s,
      elem(d, 1), s,
      elem(d, 0)
    ])
  end
end