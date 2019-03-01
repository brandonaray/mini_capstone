json.array! @products.each do |product|
  json.id product.id
  json.name product.name
  json.artist product.artist
  json.year product.year
  json.tracks product.tracks
  json.price product.price
  json.image_url product.image_url
  json.description product.description
  json.label product.label
end