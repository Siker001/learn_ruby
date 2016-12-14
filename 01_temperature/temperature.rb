def ftoc num
	ans = (num.to_f-32) * (5.to_f/9.to_f)
	return ans
end

def ctof num
	ans = (num.to_f / (5.to_f/9.to_f)) + 32
	return ans
end


