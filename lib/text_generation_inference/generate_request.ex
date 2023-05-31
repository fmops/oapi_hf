defmodule TextGenerationInference.GenerateRequest do
  @moduledoc """
  Provides struct and type for GenerateRequest
  """
  use TextGenerationInference.JasonEncoder

  @type t :: %__MODULE__{
          inputs: String.t(),
          parameters: TextGenerationInference.GenerateParameters.t() | nil
        }

  defstruct [:inputs, :parameters]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [inputs: :string, parameters: {TextGenerationInference.GenerateParameters, :t}]
  end
end
