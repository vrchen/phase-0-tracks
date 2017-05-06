# 6.7 solo challenge

# pseudocode
# at initialization, require an input of the word to be guessed
# other attributes needed:
# - original word - that is entered and needs to be guessed, lowercase
# - an array of the 
# - number of guesses, starting with 0
# - length of the word
# - list of characters that has already been guessed, starts empty
# - filled_word - the current completion of the word being guessed, starts as a number of underscores that is the same length as the word

# a method that changes filled_word to be an array with same length as the word but is filled with underscores

# a method that takes in a letter being guessed and updates the current completion word with that letter if it exists
# checks if it is in the list of characters already guessed
# if yes, then return the current completion
# if not, then iterate through each character in the key word
# if the current character is the same as the guessed character, then reveal the character in the current completion word
# add one to the number of guesses
# add character to the list of characters guessed
# return the current guess joined by spaces

# method to check if all the characters have been guessed
# check by seeing if there are any underscores in the current completion word and if the number of guesses is still under the limit of number of characters

class WordGame

	attr_reader :original_word, :word_array, :allowed_guesses

	def initialize(word)
		word.downcase!
		@original_word = word
		@word_array = word.split("")
		@allowed_guesses = word.length
		@chars_guessed = []
		@filled_word = []
		@guess_count = 0
	end

	def create_template
		@allowed_guesses.times do |n|
			@filled_word << "_"
		end
		@filled_word
	end

	def guess(char)

		# code below was for rspec testing
		# create_template

		if !@chars_guessed.include?(char)
			char.downcase!
			@word_array.each_with_index do |current, i|
				if current == char
					@filled_word[i] = char
				end
			end
			@chars_guessed << char
			@guess_count += 1
		end

		p @filled_word.join(" ")
	end

	def game_over
		!@filled_word.include?("_") || @guess_count > @allowed_guesses
	end

end

# driver code / user interface

p "Welcome to the word guessing game!"
p "Enter a word for your friend to guess."
word = gets.chomp
game = WordGame.new(word)
game.create_template

p "Your friend's turn!"

while !game.game_over
	p "Enter a character you would like to guess."
	char_guess = gets.chomp
	game.guess(char_guess)
end

p "Thank you for playing!"


