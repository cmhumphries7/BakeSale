class Baker
    
    attr_reader :baker_first_name, :baker_last_name, :baker_zip_code
    attr_accessor :baker_delivery_preference, :baker_current_orders, :baker_recipes

    def initialize baker_first_name, baker_last_name, baker_zip_code#, baker_delivery_preference
        #instance variables
        @baker_first_name = baker_first_name
        @baker_last_name = baker_last_name
        @baker_zip_code = baker_zip_code
        @baker_delivery_preference = ""
        @baker_current_orders = []
        @baker_recipes = []
    end

    def set_delivery_preference(delivery_input)
        delivery_options = ["Pickup", "Delivery", "Open to Either"]
        #should above line be global? Like inserted right after "class Baker"?
        #puts "Which delivery method works for you?"
        #puts "press 1 for pickup, 2 for delivery, and 3 for either"
        #delivery_input = gets

        if (delivery_input == 1)
            #delivery_preference = @baker.set_delivery_preference (delivery_input)
            @baker_delivery_preference = delivery_options[0]
            #sets baker preference to pickup
        
        elsif (delivery_input == 2)
            #sets baker preference to delivery
            @baker_delivery_preference = delivery_options[1]
        
        elsif (delivery_input == 3)
            #sets baker preference to either
            @baker_delivery_preference = delivery_options[2]
        else
            #sets baker preference to UNKNOWN
            @baker_delivery_preference = "UNKNOWN"
        end
    end

    def baker_add_recipe recipe
        @baker_recipes << recipe
    end

    def baker_add_order order
        @baker_current_orders << order
    end

    def baker_view_orders

        report = ""
        @baker_current_orders.each do |order|
            report += order.customer_name + ", " + order.recipe + ", " + order.quantity.to_s + "\n"
        end
        report
    end

    def baker_view_recipes

        report = ""
        @baker_recipes.each do |recipe|
            report += recipe + "\n"
        end
        report
    end

    #remove_recipe


    def to_s
        output = ""
        output + "Baker name: " + @baker_first_name + " " + @baker_last_name + "\nBaker zip code: " + @baker_zip_code.to_s + "\nBaker delivery preference: " + @baker_delivery_preference
    end
end