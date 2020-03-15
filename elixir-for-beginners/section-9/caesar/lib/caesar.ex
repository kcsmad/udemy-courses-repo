defmodule Caesar do
  @moduledoc """
  Documentation for Caesar.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Caesar.hello()
      :world

  """
  def hello do
    :world
  end

  def main(argv) do
    argv
    |> parse_args
    |> process
    System.halt(0)
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean ])
    case parse do
      {[help: true], _________________, _} -> {:help}
      {[shift: shift], ["encrypt", msg], _} -> {:encrypt, msg, shift |> String.to_integer}
      ____________________________________ -> {:help}
    end
  end

  def process({:encrypt, msg, shift}) do
    Caesar.Cipher.encrypt(msg, shift)
    |> IO.puts
  end

  def process({:help}) do
    IO.puts """
    usage: ./caesar <command> <message> --shift <shift_number>
    """
  end
end