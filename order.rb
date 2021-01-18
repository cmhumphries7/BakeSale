class Order
    attr_accessor :recipe, :price, :pieces, :current_orders

    def initialize recipe, price, pieces
        @recipe = recipe
        @price = price
        @pieces = pieces
        @current_orders = 0
    end

    def add_price amount
        @price = amount
    end

    def add_pieces pieces
        @pieces = pieces
    end

    def to_s
        report = ""
        report + @recipe + ", $" + @price.to_s + ", " + @pieces.to_s + " total"
    end
end
