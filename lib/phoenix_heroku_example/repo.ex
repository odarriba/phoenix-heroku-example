defmodule PhoenixHerokuExample.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_heroku_example,
    adapter: Ecto.Adapters.Postgres
end
