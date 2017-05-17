# FAVORITE RESTAURANTS LIST MAKER

# require gems
require 'sqlite3'

# DATABASE SETUP

# create SQLite3 database
db = SQLite3::Database.new("restaurants.db")
db.results_as_hash = true

# create a table if a table doesn't already exist
create_table_cmd = 
<<-SQL
	CREATE TABLE IF NOT EXISTS restaurants(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	address VARCHAR(255),
	stars INT
	)
SQL

db.execute(create_table_cmd)


# METHODS

# inserts a new restaurant into the table
def add_rest(db, name, address, rating)
	db.execute("INSERT INTO restaurants (name, address, stars) VALUES (?, ?, ?)", [name, address, rating])
end

# edits a specified restaurant
def edit_rest(db, id, new_name, new_address, new_rating)

	if new_name. != ""
		db.execute("UPDATE restaurants SET name=? WHERE id=?",[new_name,id])
	end

	if new_address. != ""
		db.execute("UPDATE restaurants SET address=? WHERE id=?",[new_address,id])
	end

	if new_rating. != ""
		db.execute("UPDATE restaurants SET stars=? WHERE id=?",[new_rating,id])
	end
end

# deletes a specific restaurant by id
def delete_rest(db, id)
	db.execute("DELETE FROM restaurants WHERE id=?",[id])
end

# clear the list
def delete_all(db)
	db.execute("DELETE FROM restaurants")
end

# prints a list of restaurants with their IDs
def print_rest_list(db)
	rest_table = db.execute("SELECT * FROM restaurants")
	if rest_table == []
		return puts "The list is currently empty."
	end
	puts "----------------"
	puts "RESTAURANT LIST"
	rest_table.each do |rest|
		puts "#{rest['id']}: #{rest['name']} (#{rest['stars']})"
	end
	puts "----------------"
end

# prints the details of the restaurant with a given ID
def print_rest_details(db, id)
	selected_rest = db.execute("SELECT * FROM restaurants WHERE id = #{id}")[0]
	if selected_rest == nil
		return puts "This restaurant does not exist in your list." 
	end
	puts "----------------"
	puts "RESTAURANT DETAILS"
	selected_rest.each do |col_name, value|
		if !col_name.is_a? Integer
			puts "#{col_name}: #{value}"
		end
	end
	puts "----------------"
end


# DRIVER CODE

# Pseudocode:
# Print current list
# While user is not done
	# Prompt user if they would like to add a new restaurant, edit, or delete an existing restaurant
	# If want to add new
	# 	prompt new restaurant for the name, address, and rating
	#  	Store name, address, and rating
	#  	Create a new restaurant in list
	# If want to edit an existing restaurnant
	# 	ask for the restaurant # from list
	# 	print current details
	# 	Ask for updated to name, address, and rating
	#  	Store name, address, and rating
	# 	Change name, address, and rating
	# 	print updated details
	# If want to delete
	# 	Ask for the restaurant # from the list
	# 	Delete the restaurant
	# If want to view
	# 	Ask for the restaurant # from the list
	# 	Print restaurant details
	# Print updated restaurant list if changes were made
	# Ask user if they are done

print_rest_list(db)

done = "n"

while done == "n"

	puts "What would you like to do?
	\n 'add' to add a restaurant to the list
	\n 'edit' to edit the details of a restaurant
	\n 'delete' to delete a restaurant
	\n 'view' to view the details of a restaurant
	\n 'clear' to delete all restaurants on the list"
	action = gets.chomp.downcase

	if action == "add"

		p "Enter the name of the restaurant:"
		new_name = gets.chomp

		p "Enter the address of the restaurant:"
		new_address = gets.chomp

		p "Enter your rating for the restaurant:"
		new_rating = gets.chomp

		add_rest(db, new_name, new_address, new_rating)

	elsif action == "edit"

		p "Enter the restaurant number you want to edit."
		rest_num = gets.chomp

		p "Below are the current details of the restaurant."
		print_rest_details(db, rest_num)

		p "Enter the new name of the restaurant (leave blank if no updates):"
		new_name = gets.chomp

		p "Enter the new address of the restaurant (leave blank if no updates):"
		new_address = gets.chomp

		p "Enter your new rating for the restaurant (leave blank if no updates):"
		new_rating = gets.chomp

		edit_rest(db, rest_num, new_name, new_address, new_rating)

		p "Below are the updated details of the restaurant."
		print_rest_details(db, rest_num)

	elsif action == "delete"

		p "Enter the restaurant number you want to delete."
		rest_num = gets.chomp

		delete_rest(db, rest_num)

	elsif action == "view"

		p "Enter the restaurant number you want to view."
		rest_num = gets.chomp

		print_rest_details(db, rest_num)

	elsif action == "clear"

		p "Are you sure? (y/n)"
		check = gets.chomp

		if check == "y"
			delete_all(db)
		end
		
	else
		p "You entered an invalid answer. (valid options: add, edit, delete, view, clear)"
	end

	if action != "view"
		p "Below is your updated list."
		print_rest_list(db)
	end

	p "Are you finished? (y/n)"
	done = gets.chomp

end