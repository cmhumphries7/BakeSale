class Order
    attr_accessor :customer_name, :recipe, :quantity, :price

    def initialize customer_name, recipe, quantity
        @customer_name = customer_name
		@recipe = recipe
        @quantity = quantity
        @price = 0
    end

    def add_price price
       @price = price
    end

    def add_quantity quantity
       @quantity = quantity
    end

    def to_s
        report = ""
        report + @customer_name + ", " + @recipe + ", " + @quantity.to_s + "\n"
    end
end