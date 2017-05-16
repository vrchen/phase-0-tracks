# FAVORITE RESTAURANTS LIST MAKER

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("restaurants.db")
db.results_as_hash = true

# create a table if a table doesn't already exist
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS restaurants(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	address VARCHAR(255),
	stars INT,
	)
SQL

db.execute(create_table_cmd)

# Methods

# inserts a new restaurant into the table
def add_rest(db, name, address, rating)
	db.execute("INSERT INTO restaurants (name, address, stars, num_dishes) VALUES (?, ?, ?, ?)", [name, address, rating])
end

def edit_rest

end

def print_rest

end

# Test Code

add_rest(db, "McDonald's",Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr + ", " + Faker::Address.zip, 4.5)


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