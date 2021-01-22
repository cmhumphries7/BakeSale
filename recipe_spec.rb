require_relative 'recipe'

RSpec.describe Recipe do
    before do 
        recipe_name = "Cookies"
        price = 5
        pieces = 12
        @recipe = Recipe.new recipe_name, price, pieces
    end
    
    it 'should respond to recipe' do
       expect(@recipe).to respond_to(:recipe_name)
    end
    
    it 'should respond to price' do
        expect(@recipe).to respond_to(:price)
    end

    it 'should respond to pieces' do
        expect(@recipe).to respond_to(:pieces)
    end

    it 'should return a price of 5' do
        expect(@recipe.price).to eq(5)
    end

    it 'should return 12 pieces' do
        expect(@recipe.pieces).to eq(12)
    end

	describe '#add_name' do
		it 'should respond to add_name' do
			expect(@recipe).to respond_to(:add_name)
		end

		it 'should return the newly added recipe name' do
			new_name = "Butter Pecan Cookies"
			@recipe.add_name(new_name)
			expect(@recipe.recipe_name).to eq("Butter Pecan Cookies")
		end
	end

    describe '#add_price' do
        it 'should respond to add_price' do
            expect(@recipe).to respond_to(:add_price)
        end

        it 'should return the correct result for add_price' do
            new_price = 10
            @recipe.add_price(new_price)
            expect(@recipe.price).to eq(10)
        end
    end

    describe '#add_pieces' do
        it 'should respond to add_pieces' do
            expect(@recipe).to respond_to(:add_pieces)
        end

        it 'should return the correct results for add_pieces' do
            new_pieces = 12
            @recipe.add_pieces(new_pieces)
            expect(@recipe.pieces).to eq(12)
        end
    end
    
    describe 'recipe output' do
        it 'returns the correct output for a recipe listing' do
    
			new_recipe = "Butter Pecan Cookies"
			new_price = 3
			new_pieces = 12

			@recipe.add_name(new_recipe)
			@recipe.add_price(new_price)
			@recipe.add_pieces(new_pieces)
			
            expect("#{@recipe}").to eq("Butter Pecan Cookies, $3, 12 total")
        end
    end
end