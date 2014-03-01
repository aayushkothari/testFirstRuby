def add(x,y)
	x+y
end
def subtract(x,y)
	x-y
end
def sum(arr)
	if arr.length==0
		return 0
	else
		return arr.inject {|sum,n| sum+n}
	end
end
def multiply(*args)
	prod=1
	for i in 0...args.length
		prod=prod*args[i]
	end
	prod
end

def power(x,y)
	x**y
end
def factorial(x)
	fact=1
	for i in 1..x
		fact*=i
	end
	fact
end