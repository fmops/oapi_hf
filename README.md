# text_generation_inference.ex

Elixir bindings for HuggingFace [Text Generation Inference](https://github.com/huggingface/text-generation-inference) API.

## Installation

The package can be installed by adding `oapi_hf` to your list of dependencies in
`mix.exs`:

```elixir
def deps do
  [
    {:oapi_hf, "~> 0.1.0"}
  ]
end
```

## Usage

To regenerate

```sh
mix api.gen default vendor/text-generation-inference/docs/openapi.json 
```