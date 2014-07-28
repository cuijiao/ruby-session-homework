def key_exists? hash,keys
	keys.all? {|key| hash.has_key? key}
end

def split_hash_by_key hash,keys
  result, splitted_hash = Array.new, Hash.new	
  keys=keys.reverse!

  if key_exists? hash,keys
  	hash.each_pair {|key, value|
  	   if key == keys.last
  	   	result.push splitted_hash unless splitted_hash == {}			
  	   	splitted_hash = {}
  	   	keys.pop
  	   end
  	   splitted_hash[key]=value	
    }
    result.push splitted_hash
    result
  else
    "key doesn't exist in hash" 	
  end 
end
