require_relative 'order'


customer_name = "Chris"
recipe_name = "Sugar Cookies"
quantity = 24
order1 = Order.new customer_name, recipe_name, quantity

puts order1