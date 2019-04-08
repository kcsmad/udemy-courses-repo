defmodule Cook do
  @moduledoc false
  def boil(food) do
    f = "Boil #{food}"
    String.upcase(f)
  end

  def sausage, do: boil("sausage")

  def cook(meat, veg), do: _cook("Grill", meat) <> _cook("boil", veg)

  defp _cook(cook, food) do
    "#{cook} #{food}"
  end
end

IO.inspect Cook.cook "pasta", "bacon"
IO.inspect Cook._cook "pasta", "bacon"
