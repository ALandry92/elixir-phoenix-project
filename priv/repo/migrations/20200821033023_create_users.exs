defmodule SocialMediaElixirPhoenix.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :user_name, :string
      add :password_hash, :string
      add :is_admin, :boolean, default: false, null: false
      add :user_name, :string,  default: false, null: false
      add :user_id, :integer


      timestamps()
    end

  end
end
