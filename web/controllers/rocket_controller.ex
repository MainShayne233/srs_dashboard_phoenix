defmodule SrsDashboard.RocketController do
  use SrsDashboard.Web, :controller

  def launch(conn, _param) do
    redirect conn, to: "/"
  end
end
