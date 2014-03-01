def echo(what)
	"#{what}"
end
def shout(what)
	"#{what.upcase}"
end
def repeat(*args)
	str=""
	if args.length==1
		2.times do
			str+=args[0]+" "
		end
	else
		args[1].times do
			str+=args[0]+" "
		end
	end
	str.strip
end
def start_of_word(str,n)
	str[0..n-1]
end
def first_word(str)
	str.split[0]
end
def titleize(str)
	little_words=["and","the","over"]
	words_arr=str.split(/\s/)
	if words_arr.length==1
		return words_arr.join.capitalize
	else
		for word in words_arr
			if little_words.include?(word) == false
				word.capitalize! 
			elsif (little_words.include?(word) == true) && (words_arr.index(word)==0)
				word.capitalize!
			end
		end

		return words_arr.join(' ')
	end
end
