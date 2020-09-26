# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :social_media_elixir_phoenix,
  ecto_repos: [SocialMediaElixirPhoenix.Repo]

# Configures the endpoint
config :social_media_elixir_phoenix, SocialMediaElixirPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JB/ErgeJ6j3YCgZva0fQQPl6e3SOGqPIBJPEErySeR3/LF8swu85n34S9likqm21",
  render_errors: [view: SocialMediaElixirPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SocialMediaElixirPhoenix.PubSub,
  live_view: [signing_salt: "cx0b4ydy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
