require_relative 'order'


recipe_name = "Donuts"
price = 2
pieces = 24
order1 = Order.new recipe_name, price, pieces

puts order1