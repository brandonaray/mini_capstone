Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#all_products"
    get "/search_product" => "products#search_product_method"
    get "/search_product/:id" => "products#search_product_method"
  end
end
