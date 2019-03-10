Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "products" => "products#create"
    patch "products/:id" => "products#update"
    delete "products/:id" => "products#destroy"
  end

  namespace :api do
    get "/suppliers" => "suppliers#index"
    get "/suppliers/:id" => "suppliers#show"
    post "suppliers" => "suppliers#create"
    patch "suppliers/:id" => "suppliers#update"
    delete "suppliers/:id" => "suppliers#destroy"
  end

  namespace :api do
    post "images" => "images#create"
    delete "images/:id" => "images#destroy"
  end
end
