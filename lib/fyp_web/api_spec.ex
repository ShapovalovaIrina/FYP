defmodule FypWeb.ApiSpec do
  alias OpenApiSpex.{Components, Info, OpenApi, Paths, Server, SecurityScheme}
  alias FypWeb.{Endpoint, Router}
  @behaviour OpenApi

  @impl OpenApi
  def spec do
    %OpenApi{
      servers: [
        # Populate the Server info from a phoenix endpoint
        Server.from_endpoint(Endpoint)
      ],
      info: %Info{
        title: "FYP app",
        version: "1.0"
      },
      # Populate the paths from a phoenix router
      paths: Paths.from_router(Router),
      components: %Components{
        securitySchemes: %{"authorization" => %SecurityScheme{
          type: "http", scheme: "bearer", bearerFormat: "JWT"}
        }
      }
    }
    |> OpenApiSpex.resolve_schema_modules() # Discover request/response schemas from path specs
  end
end
