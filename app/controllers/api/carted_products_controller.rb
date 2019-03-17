class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      status: "carted",
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
      )
    @carted_product.save
    render json: {message: "Item successfully added to cart"}
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jbuilder"
  end
end
