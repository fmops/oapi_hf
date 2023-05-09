defmodule TextGenerationInference.Info do
  @moduledoc """
  Provides struct and type for Info
  """

  @type t :: %__MODULE__{
          docker_label: String.t() | nil,
          max_batch_total_tokens: integer,
          max_best_of: integer,
          max_concurrent_requests: integer,
          max_input_length: integer,
          max_stop_sequences: integer,
          max_total_tokens: integer,
          max_waiting_tokens: integer,
          model_device_type: String.t(),
          model_dtype: String.t(),
          model_id: String.t(),
          model_pipeline_tag: String.t() | nil,
          model_sha: String.t() | nil,
          sha: String.t() | nil,
          validation_workers: integer,
          version: String.t(),
          waiting_served_ratio: number
        }

  defstruct [
    :docker_label,
    :max_batch_total_tokens,
    :max_best_of,
    :max_concurrent_requests,
    :max_input_length,
    :max_stop_sequences,
    :max_total_tokens,
    :max_waiting_tokens,
    :model_device_type,
    :model_dtype,
    :model_id,
    :model_pipeline_tag,
    :model_sha,
    :sha,
    :validation_workers,
    :version,
    :waiting_served_ratio
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      docker_label: :string,
      max_batch_total_tokens: :integer,
      max_best_of: :integer,
      max_concurrent_requests: :integer,
      max_input_length: :integer,
      max_stop_sequences: :integer,
      max_total_tokens: :integer,
      max_waiting_tokens: :integer,
      model_device_type: :string,
      model_dtype: :string,
      model_id: :string,
      model_pipeline_tag: :string,
      model_sha: :string,
      sha: :string,
      validation_workers: :integer,
      version: :string,
      waiting_served_ratio: :number
    ]
  end
end
