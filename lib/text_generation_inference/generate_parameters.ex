defmodule TextGenerationInference.GenerateParameters do
  @moduledoc """
  Provides struct and type for GenerateParameters
  """

  @type t :: %__MODULE__{
          best_of: integer | nil,
          details: boolean | nil,
          do_sample: boolean | nil,
          max_new_tokens: integer | nil,
          repetition_penalty: number | nil,
          return_full_text: boolean | nil,
          seed: integer | nil,
          stop: [String.t()] | nil,
          temperature: number | nil,
          top_k: integer | nil,
          top_p: number | nil,
          truncate: integer | nil,
          typical_p: number | nil,
          watermark: boolean | nil
        }

  defstruct [
    :best_of,
    :details,
    :do_sample,
    :max_new_tokens,
    :repetition_penalty,
    :return_full_text,
    :seed,
    :stop,
    :temperature,
    :top_k,
    :top_p,
    :truncate,
    :typical_p,
    :watermark
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      best_of: :integer,
      details: :boolean,
      do_sample: :boolean,
      max_new_tokens: :integer,
      repetition_penalty: :number,
      return_full_text: :boolean,
      seed: :integer,
      stop: {:array, :string},
      temperature: :number,
      top_k: :integer,
      top_p: :number,
      truncate: :integer,
      typical_p: :number,
      watermark: :boolean
    ]
  end
end
