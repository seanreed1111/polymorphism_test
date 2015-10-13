defmodule PolymorphismTest.Router do
  use PolymorphismTest.Web, :router

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

  scope "/", PolymorphismTest do
    pipe_through :browser # Use the default browser stack

    
    resources "/users", UserController
    resources "/albums", AlbumController   
    resources "/songs", SongController
    
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PolymorphismTest do
  #   pipe_through :api
  # end
end
