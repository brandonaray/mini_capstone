class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :description, length: { in: 2..500 }

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products

  def is_discounted?
    price < 20
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def tracks_list
    list = tracks.split(", ")
    # list.each do |track|
    #   return track
    # end
  end

  def primary_image
    if images.length > 0
      images[0].url
    else
      "https://vollrath.com/ClientCss/images/VollrathImages/No_Image_Available.jpg"
    end
  end

  
end
