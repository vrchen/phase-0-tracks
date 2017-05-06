# module 6.4 Modules

# release 1

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + " :)"
#   end

# end

# driver code
# p Shout.yell_angrily("I'm so angry")
# p Shout.yell_happily("I'm ecstatic")


# release 2 in flight.rb file (don't need to turn in)


# release 3

# module

module Shout

  def yell_angrily(words)
    p words + "!!!" + " :("
  end

  def yell_happily(words)
  	p words + "!!!" + " :)"
  end

end

# classes

class Man

	include Shout

end

class Woman

	include Shout

end

# driver code

bob = Man.new
bob.yell_happily("	why am I so happy")
bob.yell_angrily("why am I so upset")

mary = Woman.new
mary.yell_happily("I won the lottery")
mary.yell_angrily("I lost my wallet")