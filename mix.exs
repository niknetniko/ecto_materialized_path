defmodule EctoMaterializedPath.Mixfile do
  use Mix.Project

  @project_url "https://github.com/niknetniko/ecto_materialized_trail"
  @version "0.3.0"

  def project do
    [
      app: :ecto_materialized_path,
      version: @version,
      elixir: "~> 1.8",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      source_url: @project_url,
      homepage_url: @project_url,
      description: "Tree structure & hierarchy for ecto models. Uses the materialized path pattern",
      package: package(),
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: elixirc_paths()
  defp elixirc_paths(_), do: elixirc_paths()
  defp elixirc_paths(), do: ["lib"]

  defp deps do
    [
      {:ecto, ">= 3.0.0"},
      {:ex_machina, "~> 2.7.0", only: :test},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: :ecto_materialized_trail,
      maintainers: ["Alex Antonov", "Niko Strijbol"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => @project_url
      }
    ]
  end
end
