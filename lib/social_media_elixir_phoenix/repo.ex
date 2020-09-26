defmodule SocialMediaElixirPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :social_media_elixir_phoenix,
    adapter: Ecto.Adapters.Postgres
end
