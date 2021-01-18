require_relative 'order'

RSpec.describe Order do
    before do 
        recipe = "Cookies"
        price = 5
        pieces = 12
        @order = Order.new recipe, price, pieces
    end
    
    it 'should respond to recipe' do
       expect(@order).to respond_to(:recipe)
    end
    
    it 'should respond to price' do
        expect(@order).to respond_to(:price)
    end

    it 'should respond to pieces' do
        expect(@order).to respond_to(:pieces)
    end

    it 'should respond to current_orders' do
        expect(@order).to respond_to(:current_orders)
    end

    it 'should return a price of 5' do
        expect(@order.price).to eq(5)
    end

    it 'should return 12 pieces' do
        expect(@order.pieces).to eq(12)
    end

    describe '#add_price' do
        it 'should respond to add_price' do
            expect(@order).to respond_to(:add_price)
        end

        it 'should return the correct result for add_price' do
            new_price = 10
            @order.add_price(new_price)
            expect(@order.price).to eq(10)
        end
    end

    describe '#add_pieces' do
        it 'should respond to add_pieces' do
            expect(@order).to respond_to(:add_pieces)
        end

        it 'should return the correct results for add_pieces' do
            new_pieces = 12
            @order.add_pieces(new_pieces)
            expect(@order.pieces).to eq(12)
        end
    end
    
    # describe '#current_orders' do
    #     it 'should respond to #current_orders' do
    #         expect(@order).to respond_to(:current_orders)
    #     end

    #     it 'should return the # of orders placed' do
    #         expect(@order.current_orders).to eq(0)
    #     end
    # end

    

    describe 'order output' do
        it 'returns the correct output for a recipe listing' do
            #@order.add
            expect("#{@order}").to eq("Cookies, $5, 12 total")
        end
    end





    #cupcakes as example
    #needs a name, needs a price per unit, total # of units
    #how many orders have been placed for it?
    
    
    
end