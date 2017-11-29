defmodule CheeringMascot do
  @moduledoc """
  Documentation for CheeringMascot.
  """

  @doc """
  Get user input
  """
  def call_out_cheer do
    IO.gets("Please CHEER! (or 'GAME OVER' to end): ")
    |> String.trim
  end

  @doc """
  Determine the mascot's response based on the argument passed to the method
  
  ## Examples
  iex> CheeringMascot.mascot_sign_for("RED HOT")
  "H-O-T!"
  """
  def mascot_sign_for(input) do
    case input do
      "GAME OVER" -> System.stop(0)
      "RED HOT" -> "H-O-T!"
      "DO IT AGAIN" -> "Go, Fight, Win"
      "2 BITS" -> "Holler!"
      "STOMP YOUR FEET" -> "STOMP!"
      _ -> "Go Team!"
    end
  end

  @doc """
  Display the argument passed to the function

  ## Examples
    iex> CheeringMascot.display("H-O-T!")
    :ok
  """
  def display(response) do
    IO.puts(response)
  end

  # This method will control the flow of the application,
  # making use of the other three methods.
  def coordinate_cheers do
    CheeringMascot.call_out_cheer
    |> CheeringMascot.mascot_sign_for
    |> CheeringMascot.display

    CheeringMascot.coordinate_cheers
  end
end
