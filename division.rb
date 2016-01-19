#asks the user for 2 numbers

puts "Give me 2 numbers."
puts "Give me a large number..."
largenum = gets.chop.to_i


puts "Give me a smaller number..."
smallnum = gets.chop.to_i


divnum = largenum%smallnum

if divnum == 0
	puts "#{largenum} is divisible by #{smallnum}!"
else
	puts "#{largenum} is not divisible by #{smallnum}, and has a remainder of #{divnum}"
end		