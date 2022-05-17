defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add([]), do: []
  def add([head | tail]), do: [head + 1 | add(tail)]
end

IO.puts(MyList.len([1, 2, 3]))
IO.inspect(MyList.square([1, 2, 3]))
IO.inspect(MyList.add([0, 1, 2]))
