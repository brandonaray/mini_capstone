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
end
