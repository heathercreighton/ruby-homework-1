puts "Give me a word, any word:"
word = gets.chomp
num = 0

while num != word.length + 1
	puts word[num]

	num+=1

end	

puts "That spells " + word
