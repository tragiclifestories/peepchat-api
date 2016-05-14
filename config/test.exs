use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :peepchat, Peepchat.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  # username: "peepchat",
  # password: "peepchat",
  # database: "peepchat_test",
  url: "postgres://peepchat:peepchat@localhost/peepchat_test",
  pool: Ecto.Adapters.SQL.Sandbox

config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "Peepchat",
  ttl: { 30, :days },
  verify_issuer: true, # optional
  secret_key: "hBXRBXr+3SjB+Pjn12Jdyi07lbVss1rX67xCu/3+QLXRKERtVvNFSAAPo0lFUyp9",
  serializer: Peepchat.GuardianSerializer

config :comeonin, :bcrypt_log_rounds, 4