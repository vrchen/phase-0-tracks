#declare a hash
#for each question, print question
#store answer to each question via a new key + value

client = {}

p "Enter client name."
client[:name] = gets.chomp

p "Enter client age."
client[:age] = gets.chomp.to_i

p "Enter number of children."
client[:num_children] = gets.chomp.to_i

p "Enter decor theme."
client[:decor] = gets.chomp

p "Is the client's residence a house? (y/n)"
if gets.chomp.downcase == "y"
	client[:house] = true
else
	client[:house] = false
end

p "Here is your new client profile:"
p client

p "Enter any field you would like to update. Enter 'none' if no update needed."
key = gets.chomp

if key == "none"
	p "End of entry."
else
	p "What would you like to change the value to?"
	value = gets.chomp

	if key == "age" or key == "num_children"
		value = value.to_i
	end

	client[key.to_sym] = value

	p "Here is your updated client profile:"
	p client
end

