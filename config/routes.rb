Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#all_products"
    get "/search_product" => "products#one_product"
    get "/search_product/:id" => "products#one_product"
    post "/search_product_body" => "products#one_product"
  end
end
