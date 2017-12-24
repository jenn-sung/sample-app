require 'unirest'
require 'pp'

p "Hi. Welcome to my shop."
p "[1] See all of my products!"
p "[2] Create a new product!"

user_input = gets.chomp

if user_input == '1'
  p "These are all of the shop's products."
  response = Unirest.get("localhost:3000/items")
  pp response.body
elsif user_input == '2'
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
end