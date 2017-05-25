# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources


# module 9.5

get '/locations' do

  # create a new table containing a de-duplicated list of locations from students
  db.execute("CREATE TABLE IF NOT EXISTS campuses AS SELECT DISTINCT campus FROM students")
  @locations = db.execute("SELECT * FROM campuses")
  erb :locations
end

post '/add_location' do
	location = params['location']
	db.execute("INSERT INTO campuses (campus) VALUES (?)", [location])
	redirect '/locations'
end

post '/delete_location' do
	location = params['location']
	db.execute("DELETE FROM campuses WHERE campus=?",[location])
	redirect '/locations'
end
