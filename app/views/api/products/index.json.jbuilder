json.array! @products.each do |product|
  json.id product.id
  json.name product.name
  json.artist product.artist
  json.year product.year
  json.tracks_list product.tracks_list
  json.price product.price
  json.tax product.tax
  json.total product.total
  json.image_url product.image_url
  json.description product.description
  json.label product.label
  json.is_discounted? product.is_discounted?
end