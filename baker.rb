class Baker
    
    attr_reader :baker_first_name, :baker_last_name, :baker_zip_code
    attr_accessor :baker_delivery_preference

    def initialize baker_first_name, baker_last_name, baker_zip_code, baker_delivery_preference
        #instance variables
        @baker_first_name = baker_first_name
        @baker_last_name = baker_last_name
        @baker_zip_code = baker_zip_code
        @baker_delivery_preference = baker_delivery_preference
    end

    def set_delivery_preference(delivery_input)
        delivery_options = ["Pickup", "Delivery", "Open to Either"]
        puts "Which delivery method works for you?"
        puts "press 1 for pickup, 2 for delivery, and 3 for either"
        delivery_input = gets


        if (delivery_input == 1)
            #delivery_preference = @baker.set_delivery_preference (delivery_input)
            @baker_delivery_preference = delivery_options[0]
            #sets baker preference to pickup
        end

        if (delivery_input == 2)
            #sets baker preference to delivery
        end

        if (delivery_input == 3)
            #sets baker preference to either
        end
    end

    def to_s
        output = ""
        output + @delivery_preference.to_s
    end



    
    

end
