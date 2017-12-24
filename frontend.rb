require 'unirest'
require 'pp'

p "Hi. Welcome to my shop."
p "[1] See all of my products!"
p "[2] See a particular product."
p "[3] Create a new product!"
p "[4] Update a product!"
p "[5] Delete a product"

user_input = gets.chomp

if user_input == '1'
  p "These are all of the shop's products."
  response = Unirest.get("localhost:3000/items")
  pp response.body
elsif user_input == '2'
  p "Enter the id of the particular product you would like to see."
  item_id = gets.chomp
  response = Unirest.get("localhost:3000/items/#{item_id}")
  pp response.body
elsif user_input == '3'
  the_params = {}
  p "Enter the name of the new product"
  the_params['name'] = gets.chomp
  p "Enter the price of the new product."
  the_params['price'] = gets.chomp
  p "Enter the description of the new product."
  the_params['description'] = gets.chomp
  p "Enter the image for the new product."
  the_params['image'] = gets.chomp
  response = Unirest.post("localhost:3000/items", parameters: the_params)
  pp response.body
elsif user_input == '4'
  p "Enter the id of the product you would like to update."
  item_id = gets.chomp
  response = Unirest.get("localhost:3000/items/#{item_id}")
  item = response.body
  the_params = {}
  p "Enter the item name #{item['name']}"
  the_params[:name] = gets.chomp
  p "Enter the item's price #{item['price']}"
  the_params[:price] = gets.chomp
  p "Enter the item's description #{item['description']}"
  the_params[:description] = gets.chomp
  p "Enter the item's image #{item['image']}"
  the_params[:image] = gets.chomp
  response = Unirest.patch("localhost:3000/items/#{item_id}", parameters: the_params)
  pp response.body
elsif user_input == '5'
  p "Enter the id of the product you would like to delete."
  item_id = gets.chomp
  response = Unirest.delete("localhost:3000/items/#{item_id}")
  pp response.body
end