require_relative "../app/blackjack"

describe "blackjack"  do
 it "expect scoreHand result is 11" do
 	expect(scoreHand ["A"]).to eq 11
 end

 it "expect scoreHand result is 11" do
 	expect(scoreHand ["A","J"]).to eq 21
 end

 it "expect scoreHand result is 11" do
 	expect(scoreHand ["A","10","A"]).to eq 12
 end

 it "expect scoreHand result is 11" do
 	expect(scoreHand ["5","3","7"]).to eq 15
 end

 it "expect scoreHand result is 11" do
 	expect(scoreHand ["5","4","3","2","A","K"]).to eq 25
 end	
end