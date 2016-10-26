# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :no_recursion,
  ecto_repos: [NoRecursion.Repo]

# Configures the endpoint
config :no_recursion, NoRecursion.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iPBegZju6Nr5SosH4lrZX5zUv7+/3s8lUaAlBhNoruHIhAQfVRNpeMJt28SIsj3I",
  render_errors: [view: NoRecursion.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NoRecursion.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
