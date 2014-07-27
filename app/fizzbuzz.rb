def fizzbuzz number
	number=number.to_i
	if number <= 0 
		p "number need to be greater than zero"
	elsif number %15 ==0
		p "fizzbuzz"
	elsif number % 5 == 0
		p "buzz"
	elsif number %3 ==0
		p "fizz"
	else
		p "error number"	
	end
end