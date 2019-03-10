class Image < ApplicationRecord

  # Belongs to
  def product
    Product.find_by(id: product_id)
  end
end
