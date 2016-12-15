def translate arg
	# if there is " " then run the word separator and deal with it like an array
	firstLetter = arg[0].to_s
	secondLetter = arg[1].to_s
	thirdLetter = arg[2].to_s
	if arg.include? " "
		result = arg.scan(/\w+/)
	# when array - check each element aka words one by one and after modification push them back into one string somehow
		n = 0
		moreWords = []
		while n < result.length.to_i
			firstLetter = result[n][0].to_s
			secondLetter = result[n][1].to_s
			thirdLetter = result[n][2].to_s
			if (firstLetter == 'a' || firstLetter == 'e' || firstLetter == 'i' || firstLetter == 'o' || firstLetter == 'u')
				answer = result[n].to_s + "ay"
			elsif (firstLetter == "q" && secondLetter == "u")
				answer = result[n][2..-1].to_s + firstLetter + secondLetter + "ay"
			elsif (secondLetter == "q" && thirdLetter == "u")
				answer = result[n][3..-1].to_s + firstLetter + secondLetter + thirdLetter + "ay"
			else
				if (secondLetter != 'a' && secondLetter != 'e' && secondLetter != 'i' && secondLetter != 'o' && secondLetter != 'u')
					if (thirdLetter != 'a' && thirdLetter != 'e' && thirdLetter != 'i' && thirdLetter != 'o' && thirdLetter != 'u')
						answer = result[n][3..-1].to_s + firstLetter + secondLetter + thirdLetter + "ay"
					else
						answer = result[n][2..-1].to_s + firstLetter + secondLetter + "ay"
					end
				else	
					answer = (result[n].to_s.delete firstLetter) + firstLetter + "ay"	
				end
			end
			moreWords.push answer
			n = n + 1
		end
		moreWords.join(" ")
	# if there's no " " in argument, then jump to the regular dealing with words 
	else
		if (firstLetter == 'a' || firstLetter == 'e' || firstLetter == 'i' || firstLetter == 'o' || firstLetter == 'u')
			answer = arg.to_s + "ay"
		elsif (firstLetter == "q" && secondLetter == "u")
			answer = arg[2..-1].to_s + firstLetter + secondLetter + "ay"
		elsif (secondLetter == "q" && thirdLetter == "u")
			answer = arg[3..-1].to_s + firstLetter + secondLetter + thirdLetter + "ay"
		else
			if (secondLetter != 'a' && secondLetter != 'e' && secondLetter != 'i' && secondLetter != 'o' && secondLetter != 'u')
				if (thirdLetter != 'a' && thirdLetter != 'e' && thirdLetter != 'i' && thirdLetter != 'o' && thirdLetter != 'u')
					answer = arg[3..-1].to_s + firstLetter + secondLetter + thirdLetter + "ay"
				else
					answer = arg[2..-1].to_s + firstLetter + secondLetter + "ay"
				end
			else
				answer = (arg.to_s.delete firstLetter) + firstLetter + "ay"	
			end
		end
	end
end


puts translate "eat banana"