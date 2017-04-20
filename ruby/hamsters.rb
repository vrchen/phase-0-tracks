#release 1: ask clerk for info
p "Enter the hamster's name."
hamster_name = gets.chomp

p "Enter the hamster's volume level. (1 to 10)"
volume = gets.chomp

p "Enter the hamster's fur color."
fur_color = gets.chomp

p "Is the hamster a good candidate for adoption? (y/n)"
adoptable = gets.chomp

p "Enter the hamster's estimated age."
age = gets.chomp

#release 1: if no age entered, set age to nil
if age == ""
	age = nil
end

#release 2: convert age and volume to integers
if age != nil
	age = age.to_i
end

if volume != ""
	volume = volume.to_i
end

#release 3: print data to console
p "New entry created. See data below:"
p "Name: #{hamster_name}"
p "Volume: #{volume}"
p "Fur Color: #{fur_color}"
p "Adoptable: #{adoptable}"
p "Age: #{age}"