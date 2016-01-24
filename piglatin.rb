puts "Give me a word and I'll translate it to Pig Latin for you:"

word = gets.chomp.downcase

case word[0] 
when "a", "e", "i", "o", "u"
	puts "That word in Pig Latin is " + word[0..word.length] + "way"
else
	case word[1]
	when "a", "e", "i", "o", "u"
		puts "That word in Pig Latin is "	+ word[1..word.length] + word[0] + "ay"
	else 
		puts "That word in Pig Latin is " + word[2..word.length] + word[0..1] + "ay"
	end	
end


# Can also be done using the .include method
# vowels = "aeiou"
#consonants = "bcdfghjklmnpqrstvwxyz"
#if vowels.include?(word[0])
	#pl_word = word + "way"
#else

  #if consonants.include?(word[1])
    #pl_word = word [2..word.length-1] + word[0..1] + "ay"	
	# else 
		#pl_word = word[1..word.length-1] + word[0] + "ay"
	#end
#end
#puts "Ah, you mean #{pl_word}"