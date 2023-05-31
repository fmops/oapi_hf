defmodule TextGenerationInference.Details do
  @moduledoc """
  Provides struct and type for Details
  """
  use TextGenerationInference.JasonEncoder

  @type t :: %__MODULE__{
          best_of_sequences: [TextGenerationInference.BestOfSequence.t()] | nil,
          finish_reason: String.t(),
          generated_tokens: integer,
          prefill: [TextGenerationInference.PrefillToken.t()],
          seed: integer | nil,
          tokens: [TextGenerationInference.Token.t()]
        }

  defstruct [:best_of_sequences, :finish_reason, :generated_tokens, :prefill, :seed, :tokens]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      best_of_sequences: {:array, {TextGenerationInference.BestOfSequence, :t}},
      finish_reason: :string,
      generated_tokens: :integer,
      prefill: {:array, {TextGenerationInference.PrefillToken, :t}},
      seed: :integer,
      tokens: {:array, {TextGenerationInference.Token, :t}}
    ]
  end
end
