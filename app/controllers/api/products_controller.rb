class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    search = params[:search]
    sort = params[:sort_order]

    name_search = params[:search]

    if search
      @products = @products.where("name ILIKE ?", "%#{name_search}%")
    end

    # if search == "price" && sort == "asc"
    #   @products = @products.order(:price)
    # else
    #   @products = @products.order(id: :asc)
    # end


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
      image_url: params[:image_url],
      description: params[:description],
      in_stock: true
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
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
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
