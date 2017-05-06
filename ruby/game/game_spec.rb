require_relative 'game'

describe WordGame do

	let(:game) {WordGame.new("Apple")}

	it "stores the original word on initialization" do
		expect(game.original_word).to eq "apple"
	end

	it "stores the keyword on initialization" do
		expect(game.word_array).to eq ["a","p","p","l","e"]
	end

	it "stores the allowable number of guesses on initialization" do
		expect(game.allowed_guesses).to eq 5
	end

	it "changes filled_word to an array of underscores that is the length of the word" do
		expect(game.create_template).to eq ["_","_","_","_","_"]
	end

	it "update the guess with the inputted character" do
		expect(game.guess("p")).to eq "_ p p _ _"
	end

end