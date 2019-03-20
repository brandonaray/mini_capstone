class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      artist: params[:artist],
      year: params[:year],
      label: params[:label],
      price: params[:price],
      description: params[:description],
      # user_id: params[:user_id]
      supplier_id: 1
      )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
