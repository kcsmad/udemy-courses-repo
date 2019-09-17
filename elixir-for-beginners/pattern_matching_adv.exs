IO.puts {1, 2} = {1, 2}

[a, b] = [1, 2]
IO.puts a, b

IO.puts {:ok, my_other_file} = File.open "../README.md"
IO.puts IO.read my_other_file, :line
File.close my_other_file