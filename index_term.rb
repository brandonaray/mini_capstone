require "http"

system "clear"
puts "Welcome to My Record Store"
puts "Enter the number of the record you want to view:"
puts " "

response = HTTP.get("http://localhost:3000/api/products/")
catalog_data = response.parse

index = 1
catalog_data.each do |record|
  puts "#{index}. #{record["name"]} by #{record["artist"]} - #{record["price"]}"
  index = index + 1
end
puts " "

selection = gets.chomp.to_i
track_arr = [ ]
system "clear"
puts "Title: #{catalog_data[selection - 1]["name"]}"
puts "Artist: #{catalog_data[selection - 1]["artist"]}"
puts "Year: #{catalog_data[selection - 1]["year"]}"
# puts "Track List: #{catalog_data[selection - 1]["name"]}"
puts "Description: #{catalog_data[selection - 1]["description"]}"
puts "Label: #{catalog_data[selection - 1]["label"]}"
puts "Price: #{catalog_data[selection - 1]["price"]}"