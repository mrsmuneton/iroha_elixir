defmodule IrohaElixirWeb.PageController do
  use IrohaElixirWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
