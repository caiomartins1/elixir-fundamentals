prefix = fn
  pfx ->
    fn name -> "#{pfx} #{name}" end
end

mrs = prefix.("Mrs")
IO.puts(mrs.("Caio"))
IO.puts(prefix.("Elixir").("Rocks"))
