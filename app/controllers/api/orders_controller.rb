class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    shopping_cart = current_user.carted_products.where(status: "carted")
    subtotal = 0

    shopping_cart.each do |item|
      subtotal += (item.product.price * item.quantity)
    end

    tax = subtotal * 0.09
    total = subtotal + tax

    @order = Order.new(
    user_id: current_user.id,
    subtotal: subtotal,
    tax: tax,
    total: total
    )
    @order.save
    if @order.save
      shopping_cart.each do |item|
        item.status = "purchased"
        item.order_id = @order.id
        item.save
      end

    render json: {message: "yo"}
      # render "show.json.jbuilder"
    
    # else
      # render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end