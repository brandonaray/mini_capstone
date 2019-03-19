json.id order.id
# json.user_id order.user_id
# json.product order.product
# json.quantity order.quantity
json.carted_products order.carted_products.each do |item|
  json.id item.id
  json.product item.product
  json.quantity item.quantity
end
json.subtotal order.subtotal
json.tax order.tax
json.total order.total