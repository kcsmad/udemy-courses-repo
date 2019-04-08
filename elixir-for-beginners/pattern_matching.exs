a = 8
IO.puts a

x = 3
y = 2

IO.puts x
IO.puts y

x = 1 + y

IO.puts x

card = 88

bingo = fn
  (88) -> "Bingo!"
  (_) -> "no win!"
end

IO.puts bingo.(card)

card = 88
win88 = fn (88) -> "Bingo!" end
nowin = fn (_) -> "no win" end

IO.puts win88.(card)
IO.puts nowin.(card)
