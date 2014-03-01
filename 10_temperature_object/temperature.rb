class Temperature
	attr_accessor :reading, :scale
	def initialize(temp)
		@reading=temp.values[0]
		@scale=temp.keys[0]
	end

	def self::from_celsius(temp)
		Temperature.new(:c => temp)
	end
	def self::from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end
	def in_fahrenheit
		if @scale==:f
			@reading
		else
			32+(9*@reading).to_f/5.0
		end
	end
	def in_celsius
		if @scale==:c
	   		 @reading
		else
			(@reading-32)*5/9
		end
	end
end
class Celsius<Temperature
	attr_accessor :reading,:scale
	def initialize(read)
		@reading=read
		@scale=:c
		Temperature.new(@scale => @reading)
	end
end
class Fahrenheit<Temperature
	attr_accessor :reading,:scale
	def initialize(read)
		@reading=read
		@scale=:f
		Temperature.new(@scale => @reading)
	end
end
