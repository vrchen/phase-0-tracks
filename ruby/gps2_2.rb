#paired with Stephanie Tong

# release 0 & 1

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash with default value 1
  # split by spaces and store into array of keys
  # convert array into hash created earlier
  # iterate through each item to store the item in a hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(str)
	grocery_hash = Hash.new(0)
	grocery_array = str.split
	grocery_array.each do |item|
		if grocery_hash.include?(item)
			grocery_hash[item] += 1
		else
			grocery_hash[item] = 1
		end
	end
	grocery_hash
end
#what if inputted a list with two of the same item

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	# check if item already exists in list
	# if yes, add quantity to value
	# if not, create new key and value
# output: updated list

#assumes that user may use this to update quantity accidentally
def add_item(list,item,quantity=1)
	if list.include?(item)
		list[item] += quantity
	else
		list[item] = quantity
	end
	list
end

# Method to remove an item from the list
# input: list, item to remove
# steps:
	#delete item from hash regardless of quantity
# output: updated list

def remove_item(list,item)
	list.delete(item)
	list
end

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: reassign the value of the item
# output: updated list

def update_quantity(list, item, quantity)
	list[item] = quantity
	list
end

# Method to print a list and make it look pretty
# input: list
# steps:
	# for each key and value, print on each line
# output: printed key and values

def print_list(list)
	list.each do |k, v|
		p "#{k}: #{v}"
	end
end

# release 2: driver code
my_list = create_list("apple apple banana")
p my_list
p add_item(my_list,"lemonade", 2)
p add_item(my_list,"tomatoes", 3)
p add_item(my_list,"onions", 1)
p add_item(my_list,"ice cream", 4)

p remove_item(my_list,"lemonade")

p update_quantity(my_list,"ice cream", 1)

print_list(my_list)