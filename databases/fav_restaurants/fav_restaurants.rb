# FAVORITE RESTAURANTS LIST MAKER

# require gems
require 'sqlite3'
require 'faker'

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

# Methods

# inserts a new restaurant into the table
def add_rest(db, name, address, rating)
	db.execute("INSERT INTO restaurants (name, address, stars) VALUES (?, ?, ?)", [name, address, rating])
end

# edits a specified restaurant
def edit_rest(db, table, id, new_name, new_address, new_rating)
	db.execute(
	<<-SQL
		UPDATE table
		SET name = ?, address = ?, rating = ?
		WHERE id = ?
	SQL
	,[new_name, new_address, new_rating, id]
	)
end

def delete_rest(db, id)

end

# prints a list of restaurants with their IDs
def print_rest_list(db)
	rest_table = db.execute("SELECT * FROM restaurants")
	puts "----------------"
	puts "RESTAURANT LIST"
	rest_table.each do |rest|
		puts "#{rest['id']}: #{rest['name']}"
	end
	puts "----------------"
end

# prints the details of the restaurant with a given ID
def print_rest_details(db, id)
	selected_rest = db.execute("SELECT * FROM restaurants WHERE id = #{id}")[0]
	puts "----------------"
	puts "RESTAURANT DETAILS"
	selected_rest.each do |col_name, value|
		if !col_name.is_a? Integer
			puts "#{col_name}: #{value}"
		end
	end
	puts "----------------"
end

# Test Code

# add_rest(db, Faker::Name.name,Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr + ", " + Faker::Address.zip, 4.5)

print_rest_details(db, 7)

edit_rest(db,'restaurants', 7, "McDonald's", "NEW ADDRESS", 5.0)

print_rest_details(db, 7)





# User Interface

# Print current list
# Prompt user if they would like to add a new restaurant, edit, or delete an existing restaurant
# If want to add new
# 	prompt new restaurant for the name, address, and rating
#  	Store name, address, and rating
#  	Create a new restaurant in list
# If want to edit an existing restaurnant
# 	ask for the restaurant # from list
# 	Ask for updated to name, address, and rating
#  	Store name, address, and rating
# 		Change name, address, and rating
# If want to delete
# 	Ask for the restaurant # fromt he list
# 	Delete the restaurant
# Print updated restaurant list