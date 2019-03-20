Rails.application.routes.draw do
  get "/products" => "products#index"

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "products" => "products#create"
    patch "products/:id" => "products#update"
    delete "products/:id" => "products#destroy"

    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
    post "/suppliers" => "suppliers#create"
    patch "/suppliers/:id" => "suppliers#update"
    delete "/suppliers/:id" => "suppliers#destroy"

    post "/images" => "images#create"
    delete "/images/:id" => "images#destroy"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    post "/carted_products" => "carted_products#create"
    get "/carted_products" => "carted_products#index"
    get "/carted_products/:id" => "carted_products#show"
    delete "/carted_products/:id" => "carted_products#destroy"
  end
end