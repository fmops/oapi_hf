defmodule TextGenerationInference.Token do
  @moduledoc """
  Provides struct and type for Token
  """
  use TextGenerationInference.JasonEncoder

  @type t :: %__MODULE__{id: integer, logprob: number | nil, special: boolean, text: String.t()}

  defstruct [:id, :logprob, :special, :text]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :integer, logprob: :number, special: :boolean, text: :string]
  end
end
