require_relative 'baker'
require_relative 'order'

baker_first_name = "Jeaux"
baker_last_name = "Shmeaux"
baker_zip_code = 90210
baker_delivery_preference = 1

joBaker = Baker.new(baker_first_name, baker_last_name, baker_zip_code)

joBaker.set_delivery_preference(baker_delivery_preference)
puts "Baker Info"
puts joBaker

customer_1 = "Brangelina"
customer_2 = "Fred Flintstone"
customer_3 = "Gandalf the White"

recipe_1 = "Birthday Cake"
recipe_2 = "Rock Candy"
recipe_3 = "Lembas Bread"

quantity1 = 2
quantity2 = 20
quantity3 = 9

joBaker.baker_add_recipe(recipe_1)
joBaker.baker_add_recipe(recipe_2)
joBaker.baker_add_recipe(recipe_3)

order1 = Order.new(customer_1, recipe_1, quantity1)
order2 = Order.new(customer_2, recipe_2, quantity2)
order3 = Order.new(customer_3, recipe_3, quantity3)

joBaker.baker_add_order(order1)
joBaker.baker_add_order(order2)
joBaker.baker_add_order(order3)

puts "\nBaker View Recipes"
puts joBaker.baker_view_recipes

puts "\nBaker View Orders"
puts joBaker.baker_view_orders
