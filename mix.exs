defmodule IrohaElixir.Mixfile do
  use Mix.Project

  def project do
    [
      app: :iroha_elixir,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {IrohaElixir.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, git: "https://github.com/phoenixframework/phoenix", branch: "master", override: true},
      {:plug, git: "https://github.com/elixir-plug/plug", branch: "master", override: true},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_html, "~> 2.10"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 2.1", override: true},
      {:plug_cowboy, "~> 2.0"},
      {:poison, "~> 4.0"},
      {:grpc, github: "tony612/grpc-elixir"}
    ]
  end
end
