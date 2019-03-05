class Product < ApplicationRecord
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
    tracks.split(", ")
  end
end
