# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_heroku_example,
  ecto_repos: [PhoenixHerokuExample.Repo]

# Configures the endpoint
config :phoenix_heroku_example, PhoenixHerokuExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fOD3ggkDhE2wNxy6mwfpMRcswpIxH/Hc0tK13a1J9dM0Pb0hTtTYBbVjEu3/TaCS",
  render_errors: [view: PhoenixHerokuExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixHerokuExample.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "EdGUlTdQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
