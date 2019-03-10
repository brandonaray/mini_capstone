class Image < ApplicationRecord
  def product
    Product.where(product_id: id)
  end
end
