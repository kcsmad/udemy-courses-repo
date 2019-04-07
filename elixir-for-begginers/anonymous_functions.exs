world_func = fn  ->  "Hello World!" end

hello_func = fn
  p -> "Hello #{p}"
end

IO.puts world_func.()
IO.puts hello_func.("Kevin")

IO.puts is_function hello_func

tuple = { 1, 2, 3 }

IO.puts elem(tuple, 1)

IO.puts tuple_size(tuple)

tuple_func = fn
  -> { 1, 2, 3 }
end

tuple_func = fn
  -> { :ok, 1, 2, 3 }
end

