require 'pry'

def palindrome_test
	puts "type the name of the file you wish to test"
	file = gets.chomp
	text = File.open(file, 'r')
	text.each_line do |line|
		words = line.split
		words.each do |word|
			if word.length > 2
				word = word.gsub(/\W+/, '').downcase
				if word == word.reverse
					puts "#{word}"
				end
			end
		end
	end
end

palindrome_test