defmodule NoRecursion.PageController do
  use NoRecursion.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
