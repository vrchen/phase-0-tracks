#paired with Stephanie Tong
#Mandatory Pairing 6.2

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #release 0
  def speak(int)
  	int.times do |i|
  		p "Woof!"
  	end
  end

  def roll_over
  	p "*rolls over*"
  end

  def dog_years(int)
  	p int*6
  end

  def sit(location)
  	p "*sits down next to the #{location}*"
  end

  #release 1
  def initialize
  	p "Initializing new puppy instance..."
  end

end

#release 0: driver code
fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(5)
fido.sit("chair")
fido.initialize


#release 2: write your own class
class Pirate

	def scream(str)
		p "Argggg...#{str}!"
	end

	def steal(str)
		p "*The pirate stole a #{str}.*"
	end

	def initialize
		p "Argg, I'm alive!"
	end

end

#initialize 50 instances of Pirate and store in an array
pirates = (0..50).map{|i| Pirate.new}

#iterate over data structure and call the instance methods on each instance
pirates.each do |individual_pirate|
  individual_pirate.scream("matey")
  individual_pirate.steal("gold coin")
end