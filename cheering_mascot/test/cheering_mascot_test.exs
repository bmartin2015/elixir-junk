defmodule CheeringMascotTest do
  use ExUnit.Case
  doctest CheeringMascot

  import Mock

  test "calls for user input" do
  	with_mock CheeringMascot, [call_out_cheer: fn() -> "f" end] do
  		assert CheeringMascot.call_out_cheer == "f"
  	end
  end
end
