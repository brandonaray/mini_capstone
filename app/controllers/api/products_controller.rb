class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
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
