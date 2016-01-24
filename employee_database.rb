class Employee
	def initialize(name,role,location,emp_num)
		@name = name
		@role = role
		@location = location
		@emp_num = emp_num
	end
	

	def name
		@name
	end
	
	def role
		@role
	end
	
	def location
		@location
	end

	def emp_num
		@emp_num
	end	
	

	def tran_loc(new_loc)
		@loc  = new_loc
	end

	def tran_role(new_role)
		@role = new_role

	end

	def tran_name(new_name)	 
		@name = new_name
	end
	


end



number_of_employees = 0
employees = []	
count = 0 	


def main(number_of_employees,employees,count)  #start of the program with attributes
 puts "Choose from the following options: "
 puts "------------------------------------"
 puts "1. Create a new employee account"
 puts "2. View an existing employee account"
 puts "3. Exit system"
 puts " "
 print "Your entry =>"

 choice = gets.chomp.to_i

  case choice

		when 1
	 		create_account(number_of_employees,employees)  #calls method to create an account
	 		count = 0
	 	when 2
	 		system "cls"
			employee_login(number_of_employees,employees,count) #calls method to login to an existing account
			count = 0
		when 3
			abort("Exiting system.  Have a great day!")

		else
			
			count +=1

			if count < 3
				puts" '#{choice}' is not a recognized entry. Please choose a valid selection."
				main(number_of_employees,employees,count)
			else
				abort("Sorry, we do not understand your selection.  See customer service.")	
			end	
 	end

end


def create_account(number_of_employees, employees) 
	count = 0

	system "cls"
	puts "Create a new employee record:"
	puts"------------------------------"

	puts "Enter the employee's name: "
	name = gets.chomp.upcase

	puts "Enter the employee's role: "
	role = gets.chomp.upcase

	puts "Enter the employee's location: "
	location = gets.chomp.upcase

	number_of_employees +=1
	emp_num  = number_of_employees

	new_employee = Employee.new(name,role,location,emp_num) 

	employees.push(new_employee) 
	puts "Employee '#{name.capitalize}' has been created.  This is Employee Number #{number_of_employees}."
	main(number_of_employees,employees,count)

end


def employee_login(number_of_employees, employees,count)
	
	puts "Look up existing account."
	puts "Please give the employee's full name: "
	name = gets.chomp.upcase
	puts "What is the employee number:"
	employee_num = gets.chomp.to_i


	not_found = true
	current_employee = ""
	employees.each do |a|  #in an .each loop, use only an 'if...end' statement without and 'else' statement
		if a.name == name && a.emp_num == employee_num
			current_employee = a
			
			not_found = false
		end
	end	
	

	case not_found  #if it's true

		when true
			if count < 3
				puts "Employee not found. Please try again.  You have #{3 - count} try(s) left."
				puts "**********************************"
				count +=1
				employee_login(number_of_employees, employees,count)
	 		else
	 			abort("Employee not found after several tries.  Please see customer service.")
	 		end	

	 else 
	 		system "cls"
	 		puts "Employee '#{current_employee.name}' has been located in our system."
	 		employee_menu(number_of_employees, employees, current_employee,count)

	end		
end	

def employee_menu(number_of_employees,employees,current_employee,count)

	
	
	puts"Welcome to the Employee Menu"
	puts"----------------------------"
	puts "1. View employee information"
	puts "2. Change employee's role"
	puts "3. Transfer employee to different location"
	puts "4. Add a different employee to role"
	puts "5. Back to main menu"
  puts""
  print "Your entry=>  " 


	choice = gets.chomp.to_i




	case choice

		when 1
			get_info(number_of_employees,employees,current_employee)
			next_menu(number_of_employees,employees,current_employee,count)
			
		when 2
	    change_role(number_of_employees,employees,current_employee)
	    next_menu(number_of_employees,employees,current_employee,count)	

	 
		when 3
			change_loc(number_of_employees,employees,current_employee)
			next_menu(number_of_employees,employees,current_employee,count)


		when 4
			change_emp(number_of_employees,employees,current_employee)
			next_menu(number_of_employees,employees,current_employee,count)


		when 5	
			main(number_of_employees,employees,count)

		else	
      
      count +=1
      if count < 3
      	puts "Invalid entry.  Try again."
      	employee_menu(number_of_employees,employees,current_employee,count)
      else
      abort("Your entry is not understood. Please contact customer service.")	
    	end
	end



end	




def get_info(number_of_employees,employees,current_employee)

	puts "Employee Name:  #{current_employee.name.capitalize}"
	puts "Employee Number: #{current_employee.emp_num}"
	puts "Employee Role:  #{current_employee.role.capitalize}"
	puts "Employee Location:  #{current_employee.location}"

end	


def change_role (number_of_employees,employees,current_employee)
	puts "What is the new role for Employee #{current_employee.name.capitalize}"
	role = gets.chomp.capitalize
  nrole = current_employee.tran_role(role)
  puts "#{current_employee.name.capitalize} now has the role of #{nrole}"


end


def change_loc(number_of_employees,employees,current_employee)
	puts "What is the new location for Employee #{current_employee.name.capitalize}"
	loc = gets.chomp.capitalize
	nloc = current_employee.tran_loc(loc)
	puts "#{current_employee.name.capitalize} is now located in #{nloc}"


end	

def change_emp(number_of_employees,employees,current_employee)
	puts "What is the name of the new employee for the role of #{current_employee.role.capitalize} at location #{current_employee.location.capitalize}."

	emp = gets.chomp.capitalize
	nemp = current_employee.tran_name(emp)
	puts "#{nemp} is now in the role of #{current_employee.role.capitalize} in #{current_employee.location.capitalize}."

end

def next_menu(number_of_employees,employees,current_employee,count)
	puts "Type 'DONE' when you are ready to return to the Employee Menu."
				ans = gets.chomp.upcase
				if ans == "DONE"
					employee_menu(number_of_employees,employees,current_employee,count)
				else 
				    puts "Invalid entry.  Exiting system"
				    main(number_of_employees,employees,count)
				end 	
end

system "cls"
main(number_of_employees,employees,count)