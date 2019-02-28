class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "products.json.jbuilder"
  end

  def one_product
    input_id = params[:id]
    @instance_product = Product.find_by(id: input_id)
    render "search_product.json.jbuilder"
  end

  # def gordon
  #   @gordon = Product.find_by(name: "Gordon")
  #   render "gordon.json.jbuilder"
  # end

  # def damn
  #   @damn = Product.find_by(name: "Damn")
  #   render "damn.json.jbuilder"
  # end

  # def nevermind
  #   @nevermind = Product.find_by(name: "Nevermind")
  #   render "nevermind.json.jbuilder"
  # end
end
