# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :favorite_songs,
  ecto_repos: [FavoriteSongs.Repo]

# Configures the endpoint
config :favorite_songs, FavoriteSongsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "afbUCPIANmOgzhbLbi74rUJ1H1U79DNQ3VRd/JvhOrNuDdy3ISsmCTwaB6XYcX4h",
  render_errors: [view: FavoriteSongsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FavoriteSongs.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
