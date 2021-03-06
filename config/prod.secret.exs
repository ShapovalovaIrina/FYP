# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

config :fyp, Fyp.Repo,
  # ssl: true,
  username: {:system, "REPO_USERNAME"},
  password: {:system, "REPO_PASSWORD"},
  database: {:system, "REPO_DATABASE"},
  hostname: {:system, "REPO_HOSTNAME"},
  port: {:system, :integer, "REPO_PORT"},
  pool_size: {:system, :integer, "POOL_SIZE", 10}

secret_key_base =
  System.get_env("SECRET_KEY_BASE") ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """

config :fyp, FypWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4000"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: secret_key_base,
  server: true

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :fyp, FypWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
