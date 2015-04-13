defmodule CloudIServiceHttpCowboy do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_cowboy,
     version: "1.5.0",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:cowboy,
      [git: "https://github.com/ninenines/cowboy.git",
       # 1.0.0 with fixes
       ref: "b57f94661f5fd186f55eb0fead49849e0b1399d1"]},
     {:cloudi_core, "~> 1.5.0"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework cowboy HTTP/HTTPS Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_cowboy"}]
   end
end
