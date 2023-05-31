defmodule TextGenerationInference.JasonEncoder do
  defmacro __using__(_opts) do
    quote do
      @derive Jason.Encoder
    end
  end
end
