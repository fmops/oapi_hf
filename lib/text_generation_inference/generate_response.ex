defmodule TextGenerationInference.GenerateResponse do
  @moduledoc """
  Provides struct and type for GenerateResponse
  """

  @type t :: %__MODULE__{details: map | nil, generated_text: String.t()}

  defstruct [:details, :generated_text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [details: :map, generated_text: :string]
  end
end
