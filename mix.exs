defmodule CloudIServiceDbElasticsearch do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_elasticsearch,
     version: "1.4.0-rc.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [# TODO, erlasticsearch dependencies cause problems here, need to get locked
     {:erlasticsearch,
      [git: "https://github.com/dieswaytoofast/erlasticsearch.git",
       tag: "1.6.3"]},
     {:poolboy, "~> 1.4.0", override: true}, # override for 17.x types
     # confirm dependencies due to erlasticsearch
     {:reltool_util, "~> 1.4.0-rc.4", override: true},
     {:jsx, "~> 2.1.1", override: true},
     {:cloudi_core, "~> 1.4.0-rc.4"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework elasticsearch Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     contributors: ["Mahesh Paolini-Subramanya", "Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_elasticsearch"}]
   end
end
