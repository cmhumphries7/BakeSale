require_relative 'baker'
require_relative 'order'

RSpec.describe Baker do

    before do
        baker_first_name = "Christine"
        baker_last_name = "Humphries"
        baker_zip_code = "43204"
        #baker_delivery_preference = ""

        @baker = Baker.new baker_first_name, baker_last_name, baker_zip_code#, baker_delivery_preference
    end
    
    describe 'add baker' do 
        it 'should respond to first name' do
            expect(@baker).to respond_to(:baker_first_name)
        end

        it 'should respond to last name' do
            expect(@baker).to respond_to(:baker_last_name)
        end

        it 'should respond to baker_delivery_preference' do
            expect(@baker).to respond_to(:baker_delivery_preference)
        end

        it 'baker first name should be Christine' do
            expect(@baker.baker_first_name).to eq("Christine")
        end

        it 'baker last name should be Humphries' do
            expect(@baker.baker_last_name).to eq("Humphries")
        end

        it 'baker zipcode should be 43204' do
            expect(@baker.baker_zip_code).to eq("43204")
        end
    end

    describe 'set delivery option' do
        it 'should set baker preference to pickup' do
            #delivery_options = ["Pickup", "Delivery", "Open to Either"]
            delivery_input = 1
            
            @baker.set_delivery_preference(delivery_input)
           
            expect("#{@baker.baker_delivery_preference}").to eq("Pickup")
        end

        it 'should set baker preference to delivery' do

            delivery_input = 2
            @baker.set_delivery_preference(delivery_input)

            expect("#{@baker.baker_delivery_preference}").to eq("Delivery")
        end

        it 'should set baker preference to open to either' do
            delivery_input = 3
            @baker.set_delivery_preference(delivery_input)

            expect("#{@baker.baker_delivery_preference}").to eq("Open to Either")
        end

        it 'should set baker preference to UKNOWN for any other entry' do
            delivery_input = 0
            @baker.set_delivery_preference(delivery_input)

            expect("#{@baker.baker_delivery_preference}").to eq("UNKNOWN")
        end
    end

    describe '#baker_add_order' do
        it 'should respond to #baker_add_order' do
            expect(@baker).to respond_to(:baker_add_order)
        end

        it 'should add the new order to @baker.baker_current_orders' do
            customer_1 = "Brangelina"
            recipe_1 = "Birthday Cake"
            quantity1 = 2
            order1 = Order.new(customer_1, recipe_1, quantity1)
            @baker.baker_add_order(order1)
            expect(@baker.baker_current_orders[0]).to eq(order1)
        end
    end

    describe '#baker_current_orders' do

        it 'should respond to #baker_current_orders' do
            expect(@baker).to respond_to(:baker_current_orders)
        end

        it 'should list each current order' do
            customer_1 = "Brangelina"
            customer_2 = "Fred Flintstone"
            customer_3 = "Gandalf the White"

            recipe_1 = "Birthday Cake"
            recipe_2 = "Rock Candy"
            recipe_3 = "Lembas Bread"

            quantity1 = 2
            quantity2 = 20
            quantity3 = 9

            order1 = Order.new(customer_1, recipe_1, quantity1)
            order2 = Order.new(customer_2, recipe_2, quantity2)
            order3 = Order.new(customer_3, recipe_3, quantity3)

            @baker.baker_add_order(order1)
            @baker.baker_add_order(order2)
            @baker.baker_add_order(order3)

            expect(@baker.baker_view_orders).to eq("Brangelina, Birthday Cake, 2\nFred Flintstone, Rock Candy, 20\nGandalf the White, Lembas Bread, 9\n")
        end

    end

    describe '#baker_add_recipe' do

        it 'should respond to #baker_add_recipe' do
            expect(@baker).to respond_to(:baker_add_recipe)
        end

        it 'should add the recipe to the list of baker\'s recipes' do
            new_recipe = "SMORES"
            @baker.baker_add_recipe(new_recipe)
            expect(@baker.baker_recipes.first).to eq("SMORES")
        end
    end

    describe '#baker_view_recipes' do

        it 'should respond to #baker_view_recipes' do
            expect(@baker).to respond_to(:baker_view_recipes)
        end

        it 'should list each recipe the baker has added' do

            recipe_1 = "Strawberry Shortbread"
            recipe_2 = "Peanut Butter Cheesecake"
            recipe_3 = "Banana Nut Muffins"

            @baker.baker_add_recipe(recipe_1)
            @baker.baker_add_recipe(recipe_2)
            @baker.baker_add_recipe(recipe_3)

            expect(@baker.baker_view_recipes).to eq("Strawberry Shortbread\nPeanut Butter Cheesecake\nBanana Nut Muffins\n")
        end
    end
    



end