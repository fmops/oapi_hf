# text_generation_inference.ex
[![Build Status](https://github.com/fmops/text_generation_inference.ex/workflows/Elixir%20CI/badge.svg)](https://github.com/fmops/text_generation_inference.ex/actions/workflows/elixir.yml) [![Hex.pm](https://img.shields.io/hexpm/v/text_generation_inference.svg)](https://hex.pm/packages/text_generation_inference) [![Documentation](https://img.shields.io/badge/documentation-gray)](https://hexdocs.pm/text_generation_inference)


OpenAPI generated Elixir bindings for HuggingFace [Text Generation Inference](https://github.com/huggingface/text-generation-inference) API.

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
