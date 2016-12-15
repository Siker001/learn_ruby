def echo par
	par
end

def shout par
	par.upcase
end

def repeat(par1, par2 = 2)
	([par1]*par2).join(' ')
end

def start_of_word(arg1, arg2)

	arg1[0..arg2-1]
end

def first_word arg
	result = arg.scan(/\w+/)
	result[0]
end

def titleize arg
	result = arg.scan(/\w+/)
	x = 0
	final = []
	while x < result.length
		
		final = result[x].capitalize
		x = x +1
	end
	if x > 1
		final.split(/ |\_/).map(&:capitalize).join(" ")

	end
	return final
	
	
	
	
end