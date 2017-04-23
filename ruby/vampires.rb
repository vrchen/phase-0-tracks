#release 3: multiple employees
p "How many employees will be processed?"
num = gets.chomp.to_i

while num > 0

	#release 1: gather data
	p "What is your name?"
	vname = gets.chomp

	p "How old are you?"
	age = gets.chomp

	p "What year were you born?"
	birth_year = gets.chomp

	p "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	p "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	result = ""

	#release 4: allergies
	allergy = []
	current_allergy = ""
	while current_allergy != "done"
		p "Please name any allergies one at a time. Type 'done' when you are finished."
		current_allergy = gets.chomp
		allergy << current_allergy
	end

	if allergy.include?("sunshine")
		p "Probably a vampire."
		break
	end

	#release 2: detection logic
	age = age.to_i
	birth_year = birth_year.to_i
	current_year = 2017
	calc_age = current_year - birth_year


	if vname == "Drake Cula" || vname == "Tu Fang"		
		result = "Definitely a vampire."

	elsif age == calc_age && (garlic_bread.downcase == "y" || insurance.downcase == "y")
		result = "Probably not a vampire."

	elsif age != calc_age && garlic_bread.downcase == "n" && insurance.downcase == "n"
		result = "Almost certainly a vampire."

	elsif age != calc_age && (garlic_bread.downcase == "n" || insurance.downcase == "n")
		result = "Probably a vampire."

	else
		result = "Results inconclusive."

	end

	p result
	num = num - 1

end

#release 5: plot twist
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."