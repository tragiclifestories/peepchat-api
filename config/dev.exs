use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :peepchat, Peepchat.Endpoint,
  http: [port: 4000],
  code_reloader: true,
  check_origin: false,
  watchers: []

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "peepchat",
  password: "peepchat",
  database: "peepchat_dev",
  hostname: "localhost",
  pool_size: 10

config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "Peepchat",
  ttl: { 30, :days },
  verify_issuer: true, # optional
  secret_key: "hBXRBXr+3SjB+Pjn12Jdyi07lbVss1rX67xCu/3+QLXRKERtVvNFSAAPo0lFUyp9",
  serializer: Peepchat.GuardianSerializer