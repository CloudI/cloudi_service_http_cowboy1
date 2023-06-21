#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceHttpCowboy do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_cowboy1,
     version: "2.0.6",
     language: :erlang,
     erlc_options: [
       :deterministic,
       :debug_info,
       :warn_export_vars,
       :warn_unused_import,
       #:warn_missing_spec,
       :warnings_as_errors],
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:cowboy, ">= 1.1.2"},
     {:cloudi_core, ">= 2.0.6"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework cowboy 1.x HTTP/HTTPS Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_cowboy1"}]
   end
end
