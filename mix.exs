defmodule CloudIServiceDbElasticsearch do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_elasticsearch,
     version: "1.5.1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [# TODO, erlasticsearch dependencies cause problems here, need to get locked
     {:erlasticsearch,
      [git: "https://github.com/dieswaytoofast/erlasticsearch.git",
       tag: "1.6.8"]},
     {:poolboy, "~> 1.4.0", override: true}, # override for 17.x types
     # confirm dependencies due to erlasticsearch
     {:reltool_util, "~> 1.5.1", override: true},
     {:jsx, "~> 2.1.1", override: true},
     {:cloudi_core, "~> 1.5.1"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework elasticsearch Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     maintainers: ["Mahesh Paolini-Subramanya", "Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_elasticsearch"}]
   end
end
