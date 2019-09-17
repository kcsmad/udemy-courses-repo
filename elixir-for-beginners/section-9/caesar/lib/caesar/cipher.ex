defmodule Caesar.Cipher do
  def encrypt(msg, shift) do
    msg
    #convert msg to char_list
    |> to_char_list
    #iterate over list apply shift mapping
    |> Enum.map(&shift_char(&1, shift))
    # return list as a binary string
    |> List.to_string
  end

  defp shift_char(char, shift) do
    case char do
      chr when chr in (?a..?z) -> calculate_mapping(?a, chr, shift)
      chr when chr in (?A..?Z) -> calculate_mapping(?A, chr, shift)
      chr -> chr
    end
  end

  def calculate_mapping(base_letter, char, shift) do
    # find the ASCII integer of the char and normalize it
    # by substracting the size of the alphabet
    normalize = &(&1 - 26)

    # ensure shift number is within the alphabet size
    shift_num = rem(shift, 26)

    # calculate the shifted value
    base_letter + rem(char - normalize.(base_letter) - shift_num, 26)
  end


end