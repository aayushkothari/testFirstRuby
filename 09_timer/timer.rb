class Timer
	attr_accessor :seconds, :time_string
	def initialize 
		@seconds=0
	end
	def pad(str)
		str.rjust(2,"0")
	end
	def time_string
		hr=@seconds/3600
		rem_secs=@seconds%3600
		min=rem_secs/60
		sec=rem_secs%60
		@time_string=pad(hr.to_s)+":"+pad(min.to_s)+":"+pad(sec.to_s)
	end
end