import Config

if Mix.env() == :dev do
  config :oapi_generator,
    default: [
      base_location: "lib/text_generation_inference",
      base_module: TextGenerationInference,
      rename: [
        {"Text Generation Inference", "TextGenerationInference{}"}
      ]
    ]
end

config :tesla,
  adapter: {Tesla.Adapter.Finch, name: TextGenerationInference.Finch}
