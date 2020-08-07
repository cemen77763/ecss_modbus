defmodule EcssModbus.MixProject do
    use Mix.Project

    def project do
        [
        apps_path: "apps",
        version: "1.0.0",
        start_permanent: Mix.env() == :prod,
        language: :erlang,
        deps: deps()
        ]
    end

    # Dependencies listed here are available only for this
    # project and cannot be accessed from applications inside
    # the apps folder.
    #
    # Run "mix help deps" for examples and options.
    defp deps do
        [
        # {:dep_from_hexpm, "~> 0.3.0"},
        # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
        # {:sibling_app_in_umbrella, in_umbrella: true}
        #{:chronica, git: "https://github.com/eltex-ecss/chronica.git", tag: "1.0.0"},
        ]
    end
end
