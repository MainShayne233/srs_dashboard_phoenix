defmodule SrsDashboard.DashboardController do
  use SrsDashboard.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

end
