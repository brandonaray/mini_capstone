class Api::OrdersController < ApplicationController

  def create
    price = Product.find_by(id: params[:product_id]).price
    quantity = params[:quantity].to_i
    subtotal = price * quantity
    tax_rate = 0.0625
    tax = subtotal * tax_rate
    total = subtotal + tax

    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: subtotal,
    tax: tax,
    total: total
    )
    if @order.save
      render "show.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end
end
