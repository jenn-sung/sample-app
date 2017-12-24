require 'unirest'
require 'pp'

p "Hi. Welcome to my shop."
p "[1] to see all of my products! "

user_input = gets.chomp

if user_input == '1'
  p " These are all of the shop's products."
  response = Unirest.get("localhost:3000/items")
  pp response.body
end