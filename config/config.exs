import Config

config :oapi_generator,
  default: [
    base_location: "lib/text_generation_inference",
    base_module: TextGenerationInference,
    rename: [
      {"Text Generation Inference", "TextGenerationInference{}"}
    ]
  ]

config :tesla,
  adapter: {Tesla.Adapter.Finch, name: OpenAI.Finch}
