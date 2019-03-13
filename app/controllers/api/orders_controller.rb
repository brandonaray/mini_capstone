class Api::OrdersController < ApplicationController
  tax_rate = 0.0625

  def create
    if current_user
      @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      # subtotal: price * quantity,
      # tax: subtotal * tax_rate,
      # total: subtotal + tax
      )
      if @order.save
        render json: {message: "Order successful! Your stuff is on its way!"}
      else
        render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: []
    end
  end

  def index
end
