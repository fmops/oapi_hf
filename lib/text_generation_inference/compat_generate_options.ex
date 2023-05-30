defmodule TextGenerationInference.CompatGenerateOptions do
  @moduledoc """
  Provides struct and type for CompatGenerateOptions
  """
  use TextGenerationInference.JasonEncoder

  @type t :: %__MODULE__{use_cache: boolean | nil, wait_for_model: boolean | nil}

  defstruct [:use_cache, :wait_for_model]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [use_cache: :boolean, wait_for_model: :boolean]
  end
end
