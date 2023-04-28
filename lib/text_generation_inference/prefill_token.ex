defmodule TextGenerationInference.PrefillToken do
  @moduledoc """
  Provides struct and type for PrefillToken
  """

  @type t :: %__MODULE__{id: integer, logprob: number | nil, text: String.t()}

  defstruct [:id, :logprob, :text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :integer, logprob: :number, text: :string]
  end
end
