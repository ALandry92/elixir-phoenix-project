defmodule SocialMediaElixirPhoenix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :is_admin, :boolean, default: false
    field :password_hash, :string
    field :user_name, :string,  default: false, null: false
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :user_name, :password_hash, :is_admin])
    |> validate_required([:email, :user_name, :password_hash, :is_admin])
  end
end
