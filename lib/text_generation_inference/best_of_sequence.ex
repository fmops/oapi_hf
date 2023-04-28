defmodule TextGenerationInference.BestOfSequence do
  @moduledoc """
  Provides struct and type for BestOfSequence
  """

  @type t :: %__MODULE__{
          finish_reason: String.t(),
          generated_text: String.t(),
          generated_tokens: integer,
          prefill: [TextGenerationInference.PrefillToken.t()],
          seed: integer | nil,
          tokens: [TextGenerationInference.Token.t()]
        }

  defstruct [:finish_reason, :generated_text, :generated_tokens, :prefill, :seed, :tokens]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      finish_reason: :string,
      generated_text: :string,
      generated_tokens: :integer,
      prefill: {:array, {TextGenerationInference.PrefillToken, :t}},
      seed: :integer,
      tokens: {:array, {TextGenerationInference.Token, :t}}
    ]
  end
end
