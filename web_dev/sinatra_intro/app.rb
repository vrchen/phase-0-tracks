# require gems
require "sinatra"
require "sinatra/reloader" if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0

# 1. A /contact route that displays an address
get '/contact' do
	"The address is: <br>1234 Street Rd <br>Great City, CA 99999"
end

# 2. A /great_job route that can take a person's name as a query parameter
# and say "Good job, [person's name]"
# if query parameter not present, then say "Good job!"
get '/great_job' do
	person_name = params[:name]
	if person_name
		"Good job, #{person_name}!"
	else
		"Good job!"
	end
end

# 3. a route that uses route parameters to add two numbers and respond w the result
get '/:num1/plus/:num2' do
	first_num = params[:num1].to_i
	second_num = params[:num2].to_i
	sum = first_num + second_num
	"#{first_num} plus #{second_num} is #{sum}"
end

# 4. Optional bonus: make homepage a route that allows users to search the database by ID
get '/' do
	student = db.execute("SELECT * FROM students WHERE id=?",params[:id])[0]
    response = "Search Result:<br>"
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br>"
    response
end