defmodule TextGenerationInference.Text_Generation_Inference do
  @moduledoc """
  Provides API endpoints related to text  generation  inference
  """

  @default_client TextGenerationInference.Client

  @doc """
  Generate tokens if `stream == false` or a stream of token if `stream == true`

  """
  @spec compat_generate(TextGenerationInference.CompatGenerateRequest.t(), keyword) ::
          {:ok, TextGenerationInference.GenerateResponse.t()}
          | {:error, TextGenerationInference.ErrorResponse.t()}
  def compat_generate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {TextGenerationInference.Text_Generation_Inference, :compat_generate},
      url: "",
      body: body,
      method: :post,
      request: [{"application/json", {TextGenerationInference.CompatGenerateRequest, :t}}],
      response: [
        {200, {TextGenerationInference.GenerateResponse, :t}},
        {422, {TextGenerationInference.ErrorResponse, :t}},
        {424, {TextGenerationInference.ErrorResponse, :t}},
        {429, {TextGenerationInference.ErrorResponse, :t}},
        {500, {TextGenerationInference.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Generate tokens

  """
  @spec generate(TextGenerationInference.GenerateRequest.t(), keyword) ::
          {:ok, TextGenerationInference.GenerateResponse.t()}
          | {:error, TextGenerationInference.ErrorResponse.t()}
  def generate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {TextGenerationInference.Text_Generation_Inference, :generate},
      url: "/generate",
      body: body,
      method: :post,
      request: [{"application/json", {TextGenerationInference.GenerateRequest, :t}}],
      response: [
        {200, {TextGenerationInference.GenerateResponse, :t}},
        {422, {TextGenerationInference.ErrorResponse, :t}},
        {424, {TextGenerationInference.ErrorResponse, :t}},
        {429, {TextGenerationInference.ErrorResponse, :t}},
        {500, {TextGenerationInference.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Generate a stream of token using Server-Sent Events

  """
  @spec generate_stream(TextGenerationInference.GenerateRequest.t(), keyword) ::
          {:ok, binary} | {:error, binary}
  def generate_stream(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {TextGenerationInference.Text_Generation_Inference, :generate_stream},
      url: "/generate_stream",
      body: body,
      method: :post,
      request: [{"application/json", {TextGenerationInference.GenerateRequest, :t}}],
      response: [{200, :binary}, {422, :binary}, {424, :binary}, {429, :binary}, {500, :binary}],
      opts: opts
    })
  end

  @doc """
  Text Generation Inference endpoint info

  """
  @spec get_model_info(keyword) :: {:ok, TextGenerationInference.Info.t()} | :error
  def get_model_info(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {TextGenerationInference.Text_Generation_Inference, :get_model_info},
      url: "/info",
      method: :get,
      response: [{200, {TextGenerationInference.Info, :t}}],
      opts: opts
    })
  end

  @doc """
  Prometheus metrics scrape endpoint

  """
  @spec metrics(keyword) :: {:ok, binary} | :error
  def metrics(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {TextGenerationInference.Text_Generation_Inference, :metrics},
      url: "/metrics",
      method: :get,
      response: [{200, :binary}],
      opts: opts
    })
  end
end
