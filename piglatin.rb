puts "Give me a word and I'll translate it to Pig Latin for you:"

word = gets.chomp.downcase
size = word.length

case word[0] 
when "a", "e", "i", "o", "u"
	puts "That word in Pig Latin is " + word[0..word.length] + "way"
else
	puts "That word in Pig Latin is "	+ word[1..word.length] + word[0] + "ay"
end

