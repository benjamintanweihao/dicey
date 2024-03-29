defmodule DiceInterface.Mixfile do
  use Mix.Project

  def project do
    [app: :dice_interface,
     version: "0.0.1",
     elixir: "~> 0.13.1-dev",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: [],
      mod: {DiceInterface, []} ]
  end

  # List all dependencies in the format:
  #
  # {:foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:jazz, github: "meh/jazz"},
      {:dice, in_umbrella: true}
    ]
  end
end
