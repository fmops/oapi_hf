defmodule TextGenerationInference.StreamResponse do
  @moduledoc """
  Provides struct and type for StreamResponse
  """

  @type t :: %__MODULE__{
          details: map | nil,
          generated_text: String.t() | nil,
          token: TextGenerationInference.Token.t()
        }

  defstruct [:details, :generated_text, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [details: :map, generated_text: :string, token: {TextGenerationInference.Token, :t}]
  end
end
