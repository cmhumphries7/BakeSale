require_relative 'baker'

RSpec.describe Baker do

    before do
        baker_first_name = "Christine"
        baker_last_name = "Humphries"
        baker_zip_code = "43204"

        @baker = Baker.new baker_first_name, baker_last_name, baker_zip_code
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
    
    



end