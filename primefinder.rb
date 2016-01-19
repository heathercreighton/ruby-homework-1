require "prime"

puts "Give me a number greater than 1:"

num = gets.chop.to_i

#puts "The prime numbers between 1 and #{num} are:"

primnum = 0
Prime.each(num) do |prime|
#puts prime  #prints out all the prime numbers	
   primnum +=1
end 

puts "Fun fact: There are #{primnum} between 1 and #{num}"