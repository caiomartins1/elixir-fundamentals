defmodule Chop do
  def guess(actual, bottom_l..upper_l) when actual == bottom_l or actual == upper_l do
    IO.puts(actual)
  end

  def guess(actual, bottom_l..upper_l) do
    middle = div(bottom_l + upper_l, 2)
    IO.puts("Is it #{middle}")

    handle_guess(middle, actual, bottom_l..upper_l)
  end

  def handle_guess(middle, actual, bottom_l..upper_l) when actual >= middle,
    do: guess(actual, middle..upper_l)

  def handle_guess(middle, actual, bottom_l..upper_l) when actual < middle,
    do: guess(actual, bottom_l..middle)
end
