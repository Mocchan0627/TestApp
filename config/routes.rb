Rails.application.routes.draw do
  get "/" => "home#top"
  get "/main" => "home#main"

  get "/login" => "users#login_form"
  post "/login" => "users#login"
  post "/logout" => "users#logout"
  get "/signup" => "users#signup"
  get "/users/index" => "users#index"
  get "/users/:name" => "users#show"
  post "/users/create" => "users#create"
  delete "/users/:id" => "users#destroy"

  get "/tasks/form" => "tasks#form"
  post "/tasks/create" => "tasks#create"
  delete "/tasks/:id" => "tasks#destroy"
end
