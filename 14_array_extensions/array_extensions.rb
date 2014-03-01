class Array
	def sum
		if self.size==0
			return 0
		else
			return self.inject{|sum,n| sum+n}
		end
	end

	def square
		sq=self.collect{|x| x**2}
	end

	def square!
		self.collect!{|x| x**2}
	end
end