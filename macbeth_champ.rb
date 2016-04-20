require 'pry'

class MacbethChamp

	def initialize
		file = 'macbeth[2].txt'
		@text = File.open(file, "r")
	end

	def greeting
			puts "Welcome to MacbethChamp."
			puts "Press enter to see the second most occuring word in Macbeth"
			puts "or any other character to see a different rank."
			if gets == "\n"
				rank = 2
			else 
				puts "Please put the number rank you wish to see"
				rank = gets.chomp.to_i
			end
			mac_champ(rank)
	end

	def mac_champ(rank)
		rank = rank - 1
		text_hash = Hash.new
		
		@text.each_line do |line|
	  words = line.split
	  	words.each do |word|
	  		if word.length >= 4
	  			word = word.gsub(/\W+/, '').downcase
	    		if text_hash.has_key?(word)
	      		text_hash[word] += 1
	    		else
	      		text_hash[word] = 1
	    		end
	  		end
	  	end
		end
		result = text_hash.sort{|a,b| a[1]<=>b[1]}.reverse[rank]
		puts "The word is '#{result[0]}' and occurres #{result[1]} times"
		#explicit return for unit tests
		return "The word is '#{result[0]}' and occurres #{result[1]} times"

	end
end

## WordRank class
### initialize(file)
### 

#run = MacbethChamp.new
#run.greeting




