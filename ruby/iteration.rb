#5.3 Mandatory Pairing: Victoria Chen & Stephanie Tong

#release 1: use each, map, and map!
numbers = [1,2,3,4]

city_states = {
	"Boston" => "MA",
	"Los Angeles" => "CA",
	"San Francisco" => "CA",
	"Denver" => "CO",
	"New York" => "NY"
}

#each on array
numbers.each {|num| p num*2}
p numbers

#map! on array
numbers.map! {|num| p num*2}
p numbers

#each on hash
city_states.each do |city, state|
  p "#{city} is located in the state of #{state}"
end
p city_states

#release 2: use the documentation

#delete numbers that are less than 5
numbers = (1..10).to_a
numbers.delete_if {|num| num < 5}
p numbers

#keeping numbers that are less than 5
numbers = (1..10).to_a
numbers.keep_if {|num| num < 5}
p numbers

#another way to keep numbers that are less than 5
numbers = (1..10).to_a
numbers.select! {|num| num < 5}
p numbers

#removes items until a condition is documentation
#removes item until it finds the first multiple of 5
numbers = (1..10).to_a
numbers = numbers.drop_while{|num| num%5 != 0}
p numbers