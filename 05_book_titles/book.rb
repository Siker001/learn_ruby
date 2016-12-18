class Book
# write your code here
	attr_accessor :title

	def title
		words = @title.split(" ")
		
		exceptions = ["the", "a", "an", "and", "in", "of", "on", "at"]
		words.each do |x| 
			x.capitalize! unless exceptions.include? x ;
		end
		
		words[0].capitalize!
		result = words.join(" ")
		
	end

end
