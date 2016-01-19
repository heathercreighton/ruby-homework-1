puts "Give me a word, any word:"
word = gets.chomp
num = 0

# if num != word.length + 1



until num == word.length - 1
 	print "#{word[num]}, "

 	num+=1
 end 
 	print "#{word[num]} "
 	

 puts "That spells " + word
