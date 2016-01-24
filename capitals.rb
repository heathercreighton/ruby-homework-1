cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}


cos_n_caps = Hash[cos_n_caps.to_a.shuffle]

score = 0

cos_n_caps.each do |cos, cap|
	puts "What is the capital of #{cos}"
  answer = gets.chomp.downcase.capitalize
  if answer == "Washington" || answer == "Washington, dc"
  			answer = "Washington, DC"
  end
  if answer == "Delhi" || answer == "new delhi"	|| answer == "New delhi"		
  			answer = "New Delhi"
  end
  

  	if answer == cap
  		puts "You are right!"
  		score +=1
  		puts ""
  	else
  		puts "No!  The answer is #{cap}"	
  		puts ""
  	end	

end	  
puts "Your final score is #{score}"
