scores = []


num = 0 
print "The scores are: "
until num == 10
	scores[num] = rand(1..100)
	num +=1
	if num < 10
 	print "#{scores[num-1]}, "
  else
  	print "#{scores[num-1]} "
  end	
end	

sum = scores.inject(:+)
puts ""
puts "The average score is #{sum/scores.length}"
