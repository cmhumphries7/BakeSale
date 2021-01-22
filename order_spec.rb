require_relative 'order'

RSpec.describe Order do
    before do 
        customer_name = "Luke"
        recipe = "Butter Pecan Cookies"
        quantity = 12
        @order = Order.new customer_name, recipe, quantity
    end
    
    it 'should respond to customer_name' do
       expect(@order).to respond_to(:customer_name)
    end
    
    it 'should respond to recipe' do
        expect(@order).to respond_to(:recipe)
    end

    it 'should respond to quantity' do
        expect(@order).to respond_to(:quantity)
    end

    it 'should return correct customer name' do
        expect(@order.customer_name).to eq("Luke")
    end

	it 'should return correct recipe name' do
        expect(@order.recipe).to eq("Butter Pecan Cookies")
    end

    it 'should return correct quantity' do
        expect(@order.quantity).to eq(12)
    end

    describe '#add_price' do
        it 'should respond to add_price' do
            expect(@order).to respond_to(:add_price)
        end

        it 'should update with new price' do
            new_price = 10
            @order.add_price(new_price)
            expect(@order.price).to eq(10)
        end
    end

    describe '#add_quantity' do
        it 'should respond to add_quantity' do
            expect(@order).to respond_to(:add_quantity)
        end

        it 'should update with new quantity' do
            new_quantity = 24
            @order.add_quantity(new_quantity)
            expect(@order.quantity).to eq(24)
        end
    end

    describe '#order output' do
        it 'returns the correct output for a recipe listing' do
            #@order.add
            expect("#{@order}").to eq("Luke, Butter Pecan Cookies, 12\n")
        end
    end    
end