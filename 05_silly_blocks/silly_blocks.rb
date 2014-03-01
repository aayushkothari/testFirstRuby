def reverser
 str = yield
 word_arr=str.split(/\s/)
 for word in word_arr
 	word.reverse!
 end 
 word_arr.join(' ')
end

def adder(n=1)
	number = yield
	return number+n
end

def repeater(n=1)
	n.times do 
		yield
	end
end

