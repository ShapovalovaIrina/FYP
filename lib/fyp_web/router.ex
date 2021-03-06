defmodule FypWeb.Router do
  use FypWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug OpenApiSpex.Plug.PutApiSpec, module: FypWeb.ApiSpec
  end

  pipeline :no_auth do
    plug :accepts, ["json"]
  end

  pipeline :auth do
    plug :accepts, ["json"]
    plug AuthorizationPlug
  end

  pipeline :admin_auth do
    plug :accepts, ["json"]
    plug AuthorizationPlug
#    plug AdminAuthorizationPlug
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/pets", FypWeb do
    pipe_through :no_auth

    get "/", PetController, :pet_list
    get "/chunks", PetController, :pet_chunks
    get "/:id", PetController, :pet
  end

  scope "/pets", FypWeb do
    pipe_through :admin_auth

    post "/", PetController, :add_pet
    delete "/:id", PetController, :remove_pet
  end

  scope "/users", FypWeb do
    pipe_through :auth

    post "/", UserController, :create_user
    get "/", UserController, :show_user
    delete "/", UserController, :delete_user

    post "/favourite/:pet_id", FavouriteController, :add_favourite_pet
    get "/favourite", FavouriteController, :get_favourite_pet
    delete "/favourite/:pet_id", FavouriteController, :remove_favourite_pet
  end

  scope "/shelters", FypWeb do
    pipe_through :no_auth

    get "/", ShelterController, :shelter_list
  end

  scope "/shelters", FypWeb do
    pipe_through :admin_auth

    post "/", ShelterController, :create
  end

  scope "/types", FypWeb do
    pipe_through :no_auth

    get "/", TypeController, :type_list
  end

  scope "/" do
    pipe_through :browser

    get "/swaggerui", OpenApiSpex.Plug.SwaggerUI, path: "/api/openapi"
  end

  scope "/api" do
    pipe_through :api

    get "/openapi", OpenApiSpex.Plug.RenderSpec, []
  end
end
