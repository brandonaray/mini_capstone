Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#all_products"
  end

  namespace :api do
    get "/gordon" => "products#gordon"
  end

  namespace :api do
    get "/damn" => "products#damn"
  end

  namespace :api do
    get "/nevermind" => "products#nevermind"
  end

end
