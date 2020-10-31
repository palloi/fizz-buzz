defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_evaluate/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error, "ERROR AO LER O ARQUIVO: #{reason}"}

  defp convert_evaluate(elem) do
    elem
    |> String.to_integer()
    |> evaluete_numbes()
  end

  defp evaluete_numbes(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluete_numbes(number) when rem(number, 3) == 0, do: :fizz
  defp evaluete_numbes(number) when rem(number, 5) == 0, do: :buzz
  defp evaluete_numbes(number), do: number
end
