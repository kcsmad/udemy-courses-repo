## Recursion: Reduce & Map

## Reduce, takes multiple values and
# tries to reduce them down to one value
# Sum a list of numbers
defmodule Recursion do
  def sum([], acc), do: acc
  def sum([head | tail], acc), do: sum(tail, acc + head)
end

IO.puts Recursion.sum([1,2,3], 0)

#sum([1,2,3], 0) => 0
#sum([  2,3], 1) => 0 + 1
#sum([    3], 3) => 0 + 1 + 2
#sum([     ], 6) => 0 + 1 + 2 + 3