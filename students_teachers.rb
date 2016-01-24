# student_teacher={"Eamon"=>"Teacher", "Heather"=>"Student", "Aaron"=>"Teacher", "Jill"=>"Student", "Allison"=> "Student"}


# puts "Please enter your name: "

# user = gets.chomp

# # puts "Please enter your first name: "
# # name = gets.chomp
# if student_teacher.value?(user)

#  student_teacher.each do |name, key|
# 	#for student_teacher[name] 
# #	if student_teacher[name]
 
#  		if name == user && key == "Teacher"

# 		  puts "Hello #{name}. What are you teaching today? "
		 
# 		elsif name == user && key == "Student" 

			
# 			puts "Hello #{name}.  Hope you've come prepared to learn!"
			
# 		else
# 		  puts "That name is not in our database. "	
# 		  break
# 		end	
# # 	end
#  end
# end
student_teacher={"Eamon"=>"Teacher", "Heather"=>"Student", "Aaron"=>"Teacher", "Jill"=>"Student", "Allison"=> "Student"}


	puts "Please enter your name: "
	
	user = gets.chomp
	
	# puts "Please enter your first name: "
	# name = gets.chomp
	
	#if student_teacher.value?(user)
	
	  student_teacher.each do |name, key|
	    #for student_teacher[name] 
	#    if student_teacher[name]
	 
	         if name == user
	           case key
	        		when "Teacher" 
	              puts "Hello #{name}. What are you teaching today? "
	             
	            when "Student"
	            
	                puts "Hello #{name}.  Hope you've come prepared to learn!"
	              end
	            break
	        end    
	#     end
	  end
		#else
	#      puts "'#{user}' is not in our database."
	#end