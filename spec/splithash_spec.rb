require_relative "../app/splithash"

describe "fizzbuzz"  do
it "expect return correct split result" do
 	hash = { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }
 	keys = [:b, :f]
	result = split_hash_by_key hash,keys
	expect(result).to eq [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]
 end	

 it "expect return correct split result" do
 	hash = { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }
 	keys = ['d']
	result = split_hash_by_key hash,keys
	expect(result).to eq [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]
 end	

 it "expect remove empty hash after splitting" do
 	hash = { :a=>1, :b=>2 }
 	keys = [:a]
	result = split_hash_by_key hash,keys
	expect(result).to eq [ {:a => 1, :b => 2} ]
 end	

 it "expect raise an expection" do
 	hash = { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }
 	keys = ['b']
	result = split_hash_by_key hash,keys
	expect(result).to eq "key doesn't exist in hash"
 end	
end