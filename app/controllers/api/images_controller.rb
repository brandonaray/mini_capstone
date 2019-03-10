class Api::ImagesController < ApplicationController
  def create
    @image = Image.new(
      product_id: params[:product_id], 
      url: params[:url],
      )
    if @image.save
      render "show.json.jbuilder"
    else
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
