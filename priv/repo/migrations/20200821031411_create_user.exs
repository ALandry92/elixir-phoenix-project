defmodule SocialMediaElixirPhoenix.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
create table(:user) do
  add :user_name, string
end
  end
end
