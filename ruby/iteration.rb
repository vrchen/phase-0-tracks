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

#arrays

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
numbers = [1,2,3,4,5,0]
numbers = numbers.drop_while{|num| num < 5}
p numbers


#hashes

#delete values that are less than 5
myhash = {a:1, b:2, c:3, d:8, e:10}
myhash.delete_if {|k,v| v < 5 }
p myhash

#keeping values that are less than 5
myhash = {a:1, b:2, c:3, d:8, e:10}
myhash.keep_if { |k,v| v < 5 }
p myhash

#another way to keep values that are less than 5
myhash = {a:1, b:2, c:3, d:8, e:10}
myhash.select! { |k,v| v < 5 }
p myhash

#removes items until a condition is documentation
myhash = {a:1, b:2, c:3, d:8, e:10}
myhash = myhash.drop_while { |k,v| v < 5 }
p myhash.to_h
