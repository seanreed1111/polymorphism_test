defmodule PolymorphismTest.PageController do
  use PolymorphismTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
