class Recipe
    attr_accessor :recipe_name, :price, :pieces

    def initialize recipe_name, price, pieces
        @recipe_name = recipe_name
        @price = price
        @pieces = pieces
    end

	def add_name new_name
		@recipe_name = new_name
	end

    def add_price amount
        @price = amount
    end

    def add_pieces pieces
        @pieces = pieces
    end

    def to_s
        report = ""
        report + @recipe_name + ", $" + @price.to_s + ", " + @pieces.to_s + " total"
    end
end