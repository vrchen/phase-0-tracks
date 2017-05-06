# module 6.3 - Attributes

# release 0

class Santa

  # release 3
  # assumes that we'll use get_mad_at methods to change reindeer ranking; assume we won't be changing ethnicity
  attr_reader :reindeer_ranking, :ethnicity
  attr_accessor :gender, :age

  def initialize(gender,ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  
  def about
    p "Gender: #{@gender}"
    p "Ethnicity: #{@ethnicity}"
    p "Ranking: #{@reindeer_ranking}"
    p "Age: #{@age}"
  end

  # release 2
  # setter methods
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

  # don't need anymore after refactoring
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  # getter methods, don't need anymore after refactoring
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def reindeer_ranking
  #   @reindeer_ranking
  # end

  # def gender
  #   @gender
  # end

end

# release 0 driver code

# kris = Santa.new
# kris.speak
# kris.eat_milk_and_cookies("snickerdoodle")


# release 1 - test diverse initialization methods

# hash that has the gender and ethnicity of 3 Santas
# santa_database = {
#   "kris" => ["female", "black"],
#   "chris" => ["male", "white"],
#   "cris" => ["gender fluid", "N/A"]
# }

# initialize profiles as Santas in an array
# new_santa_database = []
# santa_database.each do |name,profile|
#   new_santa_database << Santa.new(profile[0],profile[1])
# end

# check to see if profiles converted into Santas in the array correctly
# new_santa_database.each do |individual|
#   individual.about
#   individual.speak
#   individual.eat_milk_and_cookies("snickerdoodle")
# end


#release 2 & 3 driver code

# kris = Santa.new("female","black")
# p kris.age
# p kris.ethnicity
# p kris.gender
# p kris.reindeer_ranking

# kris.celebrate_birthday
# kris.gender = "male"
# kris.get_mad_at("Cupid")

# p kris.age
# p kris.gender
# p kris.reindeer_ranking


# release 4

# sample arrays
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

array_of_santas = []
3.times do |n|
  array_of_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

p array_of_santas

#set each Santa's age to a random number between 0 and 140
array_of_santas.each do |individual|
  individual.age = rand(140)
  individual.about
end

