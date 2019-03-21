class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @suppliers = Supplier.all
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
      supplier_id: params[:supplier_id]
      )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  # def edit
  #   @users = User.all
  #   @suppliers = Supplier.all
  #   @product = Product.find_by(id: params[:id])
  #   render "edit.html.erb"
  # end

  # def update
  #   @product = Product.find_by(id: params[:id])
  #   @product.artist = params[:artist]
  #   @product.year = params[:year]
  #   @product.label = params[:label]
  #   @product.price = params[:price]
  #   @product.description = params[:description]
  #   @product.name = params[:name]
  #   @product.supplier_id = params[:supplier_id]
  #   @product.save
  #   redirect_to "/products/#{@product.id}"
  # end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
