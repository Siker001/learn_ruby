def add(par1, par2)
	par1+par2
end

def subtract(par1, par2)
	par1-par2
end

def sum par
	x = 0
	par.each do |y|
		x = x + y
	end
	return x
end

def multiply par
	x = 1
	par.each do |y|
		x = x * y
	end
	return x
end

def power(par1, par2)
	x = 1
	y = par1
	while x < par2.to_i
		y = y*par1
		x = x+1
	end
	return y
end

def factorial par
	x = par.to_i
	if ((par == 0) || (par == 1))
		x = 1
	else
		y = par.to_i
		while y > 1
			x = x * (y-1)
			y = y - 1
		end
	return x	
	end
end