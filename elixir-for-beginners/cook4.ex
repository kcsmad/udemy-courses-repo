defmodule Cook4 do
  @moduledoc false
  def cook(type \\ "grill", food), do: "#{type} #{food}"
  def cook(food, type, veg), do: "Tasty #{food} with #{type} #{veg}"
end

IO.inspect Cook4.cook"brussels sprouts", "fried", "pineapple"
IO.inspect Cook4.cook("boild", "cake")