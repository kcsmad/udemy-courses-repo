cook = fn (heat, foods) -> Keyword.values(foods) |> Enum.map(&(heat <> &1)) end

IO.puts cook.("Fried", [meat: "sausage", veg: "beans"])