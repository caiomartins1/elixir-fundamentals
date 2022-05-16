fizz_buzz = fn
  0, 0, _a ->
    "FizzBuzz"

  0, _, _ ->
    "Fizz"

  _, 0, _ ->
    "Buzz"

  _, _, arg3 ->
    arg3
end

IO.puts(fizz_buzz.(0, 0, 1))
IO.puts(fizz_buzz.(0, 1, 1))
IO.puts(fizz_buzz.(1, 0, 1))
IO.puts(fizz_buzz.(1, 1, 1))
