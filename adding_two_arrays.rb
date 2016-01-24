def add(x,y) 

	puts " The sum of #{x} + #{y} is #{x + y} "
end

def sub(x,y)
	if x > y 
		puts "The difference between #{x} and #{y}  is #{x - y}"
	else
		puts "The difference between #{y} and #{x}  is #{y - x}"		
	end
end		

def mul(x,y)
	puts "The product of #{x} and #{y} is #{x*y}"
end


def div(x,y)	
	if x > y 
		puts "The quotient between #{x} and #{y}  is #{x/y}"
	else
		puts "The quotient between #{y} and #{x}  is #{y/x}"		
	end
end


arr1 =[]
arr2 = []

puts "How many entries are in our array?"
len = gets.chomp.to_i

num = 0
len.times do 
	arr1.push(rand(1..100))
	arr2.push(rand(1..100))
	num +=1
end

	puts"What would you like to do with these numbers? Choose 1-4:"
	puts "-------------------------------------------------------"

	puts "1. Add"
	puts "2. Subtract"
	puts "3. Multiply"
  puts "4. Divide"


  choice = gets.chomp.to_i
  case choice
		when 1	
			len.times do
			arr1.each do	
			add(arr1,arr2)
		end 

		when 2	
			arr1.each do
			sub(arr1,arr2)
		end
		
		when 3
			arr1.each


