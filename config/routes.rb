Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#index"
    # get "/search_product" => "products#one_product"
    get "/products/:id" => "products#show"
    # post "/search_product_body" => "products#one_product"
  end
end
