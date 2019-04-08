map = %{:a => 1, :b => 2}

IO.puts map[:a]
IO.puts map[:b]

map2 = %{:a => 1, 8 => "eight", fn -> "boom" end => "boom"}

IO.puts map2[:a]
IO.puts map2[8]
IO.puts map2[()]