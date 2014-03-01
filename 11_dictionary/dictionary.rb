class Dictionary
	attr_accessor :entries, :keywords
	def initialize
		@entries={}
	end
	def add(entry)
		if entry.to_s[0]!='{'
			@entries[entry]=nil
		else
			@entries[entry.keys[0]]=entry.values[0]
		end
	end
	def keywords
		@entries.keys.sort
	end
	def include?(key)
		@entries.keys.include?(key)
	end
	def find(what)
		result={}
		for entry in @entries.keys
			if entry[0...what.length] == what
				result[entry]=@entries[entry]
			end
		end
		result
	end
	def printable
		result=""
		for entry in @entries.keys.sort
			result+="[#{entry}] \"#{@entries[entry]}\"\n"
		end
		result.strip
	end
end

