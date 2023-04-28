defmodule TextGenerationInference.Info do
  @moduledoc """
  Provides struct and type for Info
  """

  @type t :: %__MODULE__{
          model_id: String.t(),
          model_pipeline_tag: String.t() | nil,
          model_sha: String.t() | nil,
          sha: String.t() | nil,
          version: String.t()
        }

  defstruct [:model_id, :model_pipeline_tag, :model_sha, :sha, :version]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      model_id: :string,
      model_pipeline_tag: :string,
      model_sha: :string,
      sha: :string,
      version: :string
    ]
  end
end
