# module 6.4

# release 2

# modules

module Flight

  def take_off(altitude) #no 'self' keyword because this is a mixin designed to add instance methods to a class
    puts "Taking off and ascending until reaching #{altitude} ..."
  end

end

# classes

class Bird

  include Flight

end

class Plane

  include Flight

end

# driver code
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)