defmodule TextGenerationInference.ErrorResponse do
  @moduledoc """
  Provides struct and type for ErrorResponse
  """
  use TextGenerationInference.JasonEncoder

  @type t :: %__MODULE__{error: String.t(), error_type: String.t()}

  defstruct [:error, :error_type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [error: :string, error_type: :string]
  end
end
