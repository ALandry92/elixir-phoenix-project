defmodule SocialMediaElixirPhoenixWeb.PageController do
  use SocialMediaElixirPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
