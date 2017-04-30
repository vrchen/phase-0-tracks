# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
p "Array Drill 1:"
array = zombie_apocalypse_supplies #to make code easier to read
print_string = ""
array.each do |supplies|
	p supplies
	p "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

p "Array Drill 2:"
n = array.length
swapped = true
while swapped
  swapped = false
  (n-1).times do |i|
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
      swapped = true
    end
  end
end

p array

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

p "Array Drill 3:"
def in_array?(arr,item)
  result = false
  arr.each do |el|
    if item == el
      result = true
    end
  end
  result
end

p in_array?(array,"boots")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

p "Array Drill 4:"
while array.length > 5
  array.pop
end
p array

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
other_survivor_supplies.reject! {|supply| array.include?(supply)}
other_survivor_supplies.each do |supply|
  array << supply
end
p array


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
p "Hash Drill 1:"
array = extinct_animals #to make code easier to read
array.each do |animal, year|
  p "#{animal}-#{year}"
  p "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
p "Hash Drill 2:"
array.each do |animal, year|
  if year > 2000
    array.delete(animal)
  end
end
p array

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
p "Hash Drill 3:"
array.each do |animal, year|
  array[animal] = year - 3
end
p array

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
def check_extinct(array,animal)
  extinct = false
  array.each do |ex_animal|
    if ex_animal == animal
      extinct = true
    end
  end
  extinct
end

p check_extinct(array,"Andean Cat")
p check_extinct(array,"Dodo")
p check_extinct(array,"Saiga Antelope")
  
# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
key = array.delete("Passenger Pigeon")
["Passenger Pigeon", key]