defmodule Misc.Mixfile do
  use Mix.Project

  def project do
    [app: :misc,
     version: "0.2.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: description()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    Some arithmetic functions in Elixir to start to get used to the syntax. Also includes a SumList module, which uses recursion to sum numbers in a list.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :misc,
     files: ["lib", "mix.exs", "README*"],
     maintainers: ["Jack Marchant"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/jackmarchant/misc"}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
