	def translate(string)
		vowels = ["a", "e", "i", "o", "u"]
		if vowels.include?(string[0])
		    string + "ay"
		else 
			if vowels.include?(string[1])
				string[1..-1] + string[0] + "ay"
			else 
				string [2..-1] + string[0..1] + "ay"
			end			
		end
	end
