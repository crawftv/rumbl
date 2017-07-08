defmodule Rumbl.Repo do
  @@moduledoc """
  in memory repository
  """
  def all(rumbl.User) do
    [%Rumbl.User{id: "1", name: "jose", username: "josevalim", password: "elixir"}]

  end
  def all(_module), do: []
  def get(module, id) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
  end
end
