defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected = {:ok, [1, 2, :fizz, 4, :buzz, :fizz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected
    end

    test "when a invalid file is provided, returns an error" do
      expected = {:error, "ERROR AO LER O ARQUIVO: enoent"}

      assert FizzBuzz.build("invalid.txt") == expected
    end
  end
end
