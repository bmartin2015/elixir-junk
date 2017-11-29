defmodule CheeringMascot do
  @moduledoc """
  Documentation for CheeringMascot.
  """

  @doc """
  Get user input
  """
  def call_out_cheer do
    IO.gets("Please CHEER! (or 'GAME OVER' to end: ")
  end

  # Determine the mascot's response based on the argument
  # passed to the method
  def mascot_sign_for(input) do
  end

  # Print the argument passed to the method
  def display(response) do
  end

  # This method will control the flow of the application,
  # making use of the other three methods.
  def coordinate_cheers do
  end
end
