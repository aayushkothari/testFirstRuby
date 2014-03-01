class RPNCalculator
	attr_accessor :input, :value 
	def initialize
		@input=[]
	end
	def push(val)
		@input<<val
	end
	def plus
		if @input.size<2
			raise "calculator is empty"
		else
			@value=(@input.pop)+(@input.pop)
			@input<<@value			
		end
	end
	def minus
		if @input.size<2
			raise "calculator is empty"
		else
			x=@input.pop
			y=@input.pop
			@value=y-x		
			@input<<@value	
		end
	end
	def times
		if @input.size<2
			raise "calculator is empty"
		else
			@value=(@input.pop)*(@input.pop)
			@input<<@value		
		end
	end
	def divide
		if @input.size<2
			raise "calculator is empty"
		else
			x=@input.pop
			y=@input.pop
			@value=y.to_f/x.to_f
			@input<<@value		
		end
	end
	def tokens(str)

		toks=str.split(/\s/)
		for i in 0...toks.length
			if toks[i]=="0"
				toks[i]=0
			elsif toks[i].to_i!=0
				toks[i]=toks[i].to_i
			else
				toks[i]=:"#{toks[i]}"
			end
		end
		toks
	end
	def evaluate(str)
		for i in 0...str.length
			if str[i].to_i!=0 || str[i] =="0"
				@input<<str[i].to_i
			elsif str[i]=='+'
				self.plus
			elsif str[i]=='-'
				self.minus
			elsif str[i]=='*'
				self.times
			elsif str[i]=='/'
				self.divide
			end	
		end
		self.value
	end	
end
