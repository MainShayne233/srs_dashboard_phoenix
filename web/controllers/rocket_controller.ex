defmodule SrsDashboard.RocketController do
  use SrsDashboard.Web, :controller

  def launch(conn, _param) do
    render conn, 'dashboard/index.html'
  end
end
