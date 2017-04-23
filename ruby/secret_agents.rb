#release 2: build an encryption program

#encrypt method pseudocode
#the method should take a string argument
#create a counter for going through each index of the string
#do the following until the counter reaches the last letter (length-1)
#if the current letter isn't a space, change the letter in the current index into the next letter

def encrypt(str)
	counter = 0
	while counter < str.length
		if str[counter] != " "
			if str[counter] == "z" #added this for edge case based on release 3 test
				str[counter] = "a"
			else
				str[counter] = str[counter].next
			end
		end
		counter += 1
	end
	str
end

#decrypt method pseudocode
#the method should take a string argument
#create a counter for going through each index of the string
#create a string consisting the alphabet
#do the following until the counter reaches the last letter (length-1)
#if the current letter isn't a space,
#change the current letter to the current letter's position in the alphabet minus 1

def decrypt(str)
	counter = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while counter < str.length
		if str[counter] != " "
			str[counter] = alphabet[alphabet.index(str[counter])-1]
		end
		counter += 1
	end
	str
end

#release 3: test program
#p encrypt("abc")
#p encrypt("zed")
#p decrypt("bcd")
#p decrypt("afe")

#release 4: nested method call
#p decrypt(encrypt("swordfish"))
#this works because the two methods performs opposite actions to each other. when we nest the two, we should get back the string inputted

#release 5: add interface
#pseudocode:
#print question asking whether they would like to decrypt or encrypt, store answer
#print question asking them for the password, store answer
#if encrypt, run password through encrypt method
#if decrypt, run password through decrypt method
#print the result

p "Would you like to decrypt or encrypt a password? (enter 'd' or 'e')" 
d_or_e = gets.chomp

p "What is the password?"
password = gets.chomp

if d_or_e == "d"
	p "Your decrypted password is '#{decrypt(password)}'."
elsif d_or_e == "e"
	p "Your encrypted password is '#{encrypt(password)}'."
else
	p "You did not enter a valid selection for encrypting or decrypting."
end
