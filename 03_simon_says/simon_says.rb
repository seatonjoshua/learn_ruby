def echo(greeting)
	greeting
end 

def shout(greeting)
	greeting.upcase
end

def repeat(greeting, n = 2)
	return n.times.collect { greeting }.join(' ') 
end 

def start_of_word(word, position)
	word [0...position]
end
    
def first_word(words)
	words.split(" ")[0]
end


def titleize(words)
	exempt = ['a', 'an', 'the', 'over', 'and', 'but', 'or', 'for', 'not', 'etc.', 'on', 'at', 'to', 'from', 'by']
	split_string = words.split(" ")
	maptest = split_string.map do |w|
		if exempt.include?(w)
			w 
		else
		  w.capitalize
		end
	end
	maptest[0] = maptest[0].capitalize
	maptest.join(" ")
end 


