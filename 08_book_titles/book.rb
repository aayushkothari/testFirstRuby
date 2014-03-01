class Book
	attr_accessor :title
	
	def title
		str=@title
		little_words=["and","the","a","an","of","in"]
		words_arr=str.split(/\s/)
		if words_arr.length==1
			@title= words_arr.join.capitalize
		else
			for word in words_arr
				if little_words.include?(word) == false
					word.capitalize! 
				elsif (little_words.include?(word) == true) && (words_arr.index(word)==0)
					word.capitalize!
				end
			end

			@title= words_arr.join(' ')
		end
	end
end
