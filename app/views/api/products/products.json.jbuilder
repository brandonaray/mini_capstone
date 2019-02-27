json.array! @products.eachgem  do |product|
  json.id product.id
  json.name product.name
  json.artist product.artist
  json.year product.year
  json.tracks product.tracks
  json.price product.price
  json.image_url product.image_url
  json.description product.description
end