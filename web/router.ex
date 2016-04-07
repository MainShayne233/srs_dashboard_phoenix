defmodule SrsDashboard.Router do
  use SrsDashboard.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SrsDashboard do
    pipe_through :browser # Use the default browser stack

    get "/", DashboardController, :index

    get "rocket/launch", RocketController, :launch
  end

  # Other scopes may use custom stacks.
  # scope "/api", SrsDashboard do
  #   pipe_through :api
  # end
end
