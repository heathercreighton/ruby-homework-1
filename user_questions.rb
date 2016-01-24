# @question_answers = {"Are narwals real?" => "Y", "Is today Halloween?"=>"N", "Do dogs say meow?"=>"N", "does 2+2=4?"=>"Y", "Is Heather awesome?"=>"Y"}  # putting '@' signifies global

# your_hash = {}
# hash_key = gets.chomp
# hash_value = gets.chomp
# your_hash[hash_key] = hash_value



@question_answers = {}
puts "How many questons would you like to have? "
 num = gets.chomp.to_i


 num.times do

puts "Enter a question for the quiz:"
user_quest = gets.chomp


puts "Enter the answer to your question:"
user_ans = gets.chomp.upcase
@question_answers[user_quest] = user_ans 


 end
# puts @question_answers
system "cls"

 @score = 0

def prompt
	puts "Please answer y or n to the following questions!"
end	

def put_score (s,q_a)
	puts " You got #{s}/#{q_a.count} correct answers!"
end

def ask_questions
	@question_answers.each do |question, correct_answers|
		puts"Q: #{question}"

	user_answer = gets.chomp.upcase
		if user_answer =="Y" || user_answer =="N"
			if user_answer == correct_answers
			@score +=1
			end
			else

			puts "Try again: Y or N"	
			redo
		end
	end		

 end	

 def main
 	prompt
	ask_questions
	put_score(@score, @question_answers)
 end

 main	

