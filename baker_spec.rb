require_relative 'baker'

RSpec.describe Baker do

    before do
        baker_first_name = "Christine"
        baker_last_name = "Humphries"
        baker_zip_code = "43204"
        baker_delivery_preference = ""


        @baker = Baker.new baker_first_name, baker_last_name, baker_zip_code, baker_delivery_preference
    end
    
    describe 'add baker' do 
        it 'should respond to first name' do
            expect(@baker).to respond_to(:baker_first_name)
        end

        it 'should respond to last name' do
            expect(@baker).to respond_to(:baker_last_name)
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
            delivery_options = ["Pickup", "Delivery", "Open to Either"]
            delivery_input = 1
            baker_delivery_preference = @baker.set_delivery_preference(delivery_input)
           
           
            #delivery_preference = delivery_preference.to_s

            expect("#{@baker.baker_delivery_preference}").to eq("Pickup")
        end

        it 'should set baker preference to delivery' do
            delivery_options = ["Pickup", "Delivery", "Open to Either"]
            delivery_input = (delivery_options[1])
            baker_delivery_preference = @baker.set_delivery_preference(delivery_input)
            #delivery_preference = delivery_preference.to_s

            expect("#{@baker.baker_delivery_preference}").to eq("Delivery")
        end

        it 'should set baker preference to open to either' do
        end




    end

    
    



end