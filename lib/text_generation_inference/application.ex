defmodule TextGenerationInference.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Finch, name: TextGenerationInference.Finch},
    ]
    opts = [strategy: :one_for_one, name: TextGenerationInference.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
