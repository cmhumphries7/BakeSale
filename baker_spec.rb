require_relative 'baker'

RSpec.describe Baker do

    before do
        baker_first_name = "Christine"

        @baker = Baker.new baker_first_name
    end
    
    it 'should respond to first name' do
       expect(@baker).to respond_to(:baker_first_name)
    end
    



end