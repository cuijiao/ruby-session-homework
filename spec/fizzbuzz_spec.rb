require_relative "../app/fizzbuzz"

describe "fizzbuzz"  do
 it "expect return 'fizz'" do
 	expect(fizzbuzz 3).to eq "fizz"
 end	
 it "expect return 'buzz'" do
 	expect(fizzbuzz 5).to eq "buzz"
 end	
 it "expect return 'fizzbuzz'" do
 	expect(fizzbuzz 15).to eq "fizzbuzz"
 end	
 it "expect return error message" do
 	expect(fizzbuzz -1).to eq "number need to be greater than zero"
 end
 it "expect return error message" do
 	expect(fizzbuzz 8).to eq "error number"
 end	
end