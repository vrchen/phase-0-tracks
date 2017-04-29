#Release 0: Algorithm

#assume name is 2 words separated by a space
#split name with a space into two elements in an array
#run reverse on the array

#iterate through each letter in the spy's name
#if the letter is a vowel, find the next vowel
#if the letter is a consanant, find the next consanant

#return altered name

def next_vowel_consonant(str) 
  #create an array with only vowels or consonants
	vowels = ["a","e","i","o","u","a"]
	consonants = ("a".."z").to_a
  consonants.reject! { |letter| vowels.include?(letter)}
  consonants << "b" #for looping back to b when z is the letter
	
	#convert input into an array of each letter
	name_array = str.split("")
	
	#iterate through each letter
	name_array.each_with_index do |letter,index|
	  
	  #if it is a vowel, find and replace with next
	  if vowels.include?(letter)
	    vowel_index = vowels.index(letter) + 1
	    str[index] = vowels[vowel_index]
	    
 	  #if it is a consonant, find and replace with next
	  elsif consonants.include?(letter)
	  	c_index = consonants.index(letter) + 1
	    str[index] = consonants[c_index]
	  end
	end
	str
end

def fake_name_generator(str)
	name = str.downcase.split.reverse!
	name.each do |name|
    	next_vowel_consonant(name)
    	name.capitalize!
  	end
	name = name.join(" ")
end


#Release 1: Provide User Interface
response = ""
name_db = {}
while response != "quit"
	p "Enter a spy's name. Enter 'quit' to exit."
	response = gets.chomp

	if response != "quit"
		name_db[response] = fake_name_generator(response)
	end
end

#Release 2: Store the Aliases
name_db.each do |old_name,new_name|
	p "#{new_name} is actually #{old_name}."
end

