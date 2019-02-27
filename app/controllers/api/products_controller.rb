class Api::ProductsController < ApplicationController
  def all_products

  end

  def gordon
    @gordon = Product.find_by(name: "Gordon")
    render "gordon.json.jbuilder"
  end
end
