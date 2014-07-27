def scoreHand cards
	score = cards.reduce(0) do | sum, card|
       if "JQK".include? card
       	card = "10"
       elsif "A".include? card
       	card = "1"	
       end
	   sum + card.to_i
	end

	countA = cards.count('A')

	while 21-score >= 10 && countA > 0
		score = score+10
		countA = countA-1
	end

	score
end