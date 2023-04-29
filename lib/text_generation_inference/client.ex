defmodule TextGenerationInference.Client do
  @base_middleware [
    {Tesla.Middleware.Headers,
     [
       {"content-type", "application/json"}
     ]},
    Tesla.Middleware.JSON
  ]

  def request(data) do
    api_key = Keyword.get(data.opts, :api_key)
    base_url = Keyword.get(data.opts, :base_url)

    middleware =
      if api_key != nil do
        [
          {Tesla.Middleware.Headers,
           [
             {"Authorization", "Bearer #{api_key}"}
           ]}
          | @base_middleware
        ]
      else
        @base_middleware
      end
      |> then(fn m ->
        [{Tesla.Middleware.BaseUrl, base_url} | m]
      end)

    tesla = Tesla.client(middleware)

    req_struct =
      struct(
        data.request
        |> Enum.find(fn {s, _} -> s == "application/json" end)
        |> elem(1)
        |> elem(0)
      )

    req =
      Enum.reduce(Map.to_list(req_struct), req_struct, fn {k, _}, acc ->
        case Map.fetch(data.body, k) do
          {:ok, v} -> %{acc | k => v}
          :error -> acc
        end
      end)

    body =
      req
      |> Map.from_struct()
      |> Map.filter(fn {_, v} -> v != nil end)
      |> Jason.encode!()

    tesla
    |> Tesla.request(
      method: data.method,
      url: data.url,
      body: body
    )
    |> case do
      {:ok, %Tesla.Env{status: status, body: resp_body}} ->
        # TODO: why is this a list?
        resp_body = resp_body |> Enum.at(0)

        resp_struct =
          struct(
            data.response
            |> Enum.find(fn {s, _} -> s == status end)
            |> elem(1)
            |> elem(0)
          )

        resp =
          Enum.reduce(Map.to_list(resp_struct), resp_struct, fn {k, _}, acc ->
            case Map.fetch(resp_body, Atom.to_string(k)) do
              {:ok, v} -> %{acc | k => v}
              :error -> acc
            end
          end)

        {:ok, resp}

      {:error, _error} ->
        :error
    end
  end
end
