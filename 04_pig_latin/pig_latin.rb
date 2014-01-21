def nocons(word)
	word + "ay"
end

def onecons(word)
	word[1..-1] + word[0] + "ay"
end

def twocons(word)
	word[2..-1] + word[0..1] + "ay"
end

def threecons(word)
	word[3..-1] + word[0..2] + "ay"
end

def qurules(word)
	twocons(word)
end

def qucons(word)
	threecons(word)
end

def piglatin(word)
	vowels = ["a", "e", "i", "o", "u"]
	
		
			if vowels.include?(word[0])
		    	nocons(word)
		    elsif word[0..1] == "qu"		    	
		    	qurules(word)	
		    elsif word[1..2] == "qu"
		    	qucons(word)
			else 
		  		if vowels.include?(word[1])
			    onecons(word)
			else 
				if vowels.include?(word[2])
					twocons(word)
				else 
					threecons(word)
				end			
			end			
	end
end


def translate(string)
	words = string.split(" ")
    words_array = words.map do |word|
    	piglatin(word)
    end
	words_array.join(" ")
end