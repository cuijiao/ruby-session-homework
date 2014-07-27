def fizzbuzz number
	number=number.to_i
	if number <= 0 
		return "number need to be greater than zero"
	elsif number %15 ==0
		return "fizzbuzz"
	elsif number % 5 == 0
		return "buzz"
	elsif number %3 ==0
		return "fizz"
	else
		return "error number"	
	end
end