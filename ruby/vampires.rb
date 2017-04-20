#release 1: gather data
p "What is your name?"
vname = gets.chomp

p "How old are you?"
age = gets.chomp

p "What year were you born?"
birth_year = gets.chomp

p "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

p "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

#release 2: detection logic
age = age.to_i
birth_year = year.to_i
current_year = 2017

if age == current_year - year && 