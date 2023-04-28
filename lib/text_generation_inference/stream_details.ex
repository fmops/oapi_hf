defmodule TextGenerationInference.StreamDetails do
  @moduledoc """
  Provides struct and type for StreamDetails
  """

  @type t :: %__MODULE__{
          finish_reason: String.t(),
          generated_tokens: integer,
          seed: integer | nil
        }

  defstruct [:finish_reason, :generated_tokens, :seed]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [finish_reason: :string, generated_tokens: :integer, seed: :integer]
  end
end
