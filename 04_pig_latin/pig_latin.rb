def translate(text)
	vows=["a","e","i","o","u"]
	words=text.split(/\s/)
	for word in 0...words.length
		if vows.include?(words[word][0])
			words[word]+="ay"
		else 
			cons=words[word][0]
			i=1
			
				until (vows-["u"]).include?(words[word][i])
					cons+=words[word][i]
					i+=1
				end 
			
			words[word]=words[word][cons.length..-1]+cons+"ay"
		end
	end
	 words.join(' ')
end
