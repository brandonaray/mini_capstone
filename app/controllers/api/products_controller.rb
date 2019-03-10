class Api::ProductsController < ApplicationController
  def index
    @products = Product.all


    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price => :asc)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(:price => :desc)
    elsif params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    elsif params[:discount]
      @products = @products.where("price < ?", 20)
    else
      @products = @products.order(:id => :asc)
    end
    
    render "index.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:name], 
      artist: params[:artist],
      year: params[:year], 
      label: params[:label],
      tracks: params[:tracks],
      price: params[:price],
      description: params[:description],
      in_stock: true,
      supplier_id: params[:supplier_id]
      )
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.artist = params[:artist] || @product.artist
    @product.year = params[:year] || @product.year
    @product.label = params[:label] || @product.label
    @product.tracks = params[:tracks] || @product.tracks
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    if @product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Album successfully deleted"}
  end
end