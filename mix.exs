#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceHttpCowboy do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_cowboy,
     version: "1.7.0",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:cowboy, "~> 1.0.1"},
     {:cloudi_core, "~> 1.7.0"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework cowboy HTTP/HTTPS Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_cowboy"}]
   end
end
