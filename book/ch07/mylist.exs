defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add([]), do: []
  def add([head | tail]), do: [head + 1 | add(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], val, _), do: val

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum(list, func) do
    list
    |> map(func)
    |> reduce(0, &(&1 + &2))
  end

  def max_list(list) do
    reduce(list, List.first(list, 0), &max/2)
  end

  def span(from, to) when from > to, do: []
  def span(from, to) when from <= to, do: [from | span(from + 1, to)]
end

IO.puts(MyList.len([1, 2, 3]))

IO.inspect(MyList.square([1, 2, 3]))

IO.inspect(MyList.add([0, 1, 2]))

IO.inspect(MyList.map([0, 1, 2], &(&1 + 1)))
IO.inspect(MyList.map([0, 1, 2], &(&1 * &1)))

IO.inspect(MyList.reduce([1, 2, 3, 4, 5], 0, &(&1 + &2)))

IO.inspect(MyList.mapsum([0, 1, 2], &(&1 + 1)))
IO.inspect(MyList.max_list([0, 1, 20]))

IO.inspect(MyList.span(0, 10))
