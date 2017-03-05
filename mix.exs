defmodule Gmylm.Mixfile do
  @moduledoc """
  Project dependencies and such.
  """
  use Mix.Project

  def project do
    [app: :gmylm,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env  == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :yaml_elixir]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:credo, "~> 0.5", only: [:dev, :test]},
     {:yaml_elixir, "~> 1.3.0"},
     {:ex_doc, "~> 0.14", only: :dev, runtime: false}]
  end

  # defp elixirc_paths(:test), do: ["lib", "test/test_helpers"]
  # defp elixirc_paths(_), do: ["lib"]
end
