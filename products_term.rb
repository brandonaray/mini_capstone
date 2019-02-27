require "http"

system "clear"
puts "Welcome to My Record Store!"
puts "Here are our current offerings:"
puts " "

response = HTTP.get("http://localhost:3000/api/products.json")
record_data = response.parse

index = 0
record_data.length.times do 
  puts "#{index + 1}. #{record_data[index]["name"]} by #{record_data[index]["artist"]} - #{record_data[index]["price"]}"
  index = index + 1
end

puts " "
puts "Enter the number of a record to see more information: "

choose_record = gets.chomp.to_i
response = HTTP.get(selection)
post_data = response.parse