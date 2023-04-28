defmodule TextGenerationInference.CompatGenerateRequest do
  @moduledoc """
  Provides struct and type for CompatGenerateRequest
  """

  @type t :: %__MODULE__{
          inputs: String.t(),
          parameters: TextGenerationInference.GenerateParameters.t() | nil,
          stream: boolean | nil
        }

  defstruct [:inputs, :parameters, :stream]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      inputs: :string,
      parameters: {TextGenerationInference.GenerateParameters, :t},
      stream: :boolean
    ]
  end
end
