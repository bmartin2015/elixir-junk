defmodule FavoriteSongsWeb.PageController do
  use FavoriteSongsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
