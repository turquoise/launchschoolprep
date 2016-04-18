module Swimmable

	def swim
		puts "I'm swimming!"
	end
end

module Walkable

	def walk
		puts "I'm walking."
	end

end

module Climbable

	def climb
		puts "I'm climbing"
	end

end



class Animal
	include Walkable
	include Swimmable
	include Climbable
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def speak
		puts "I'm an animal, and I speak!"
	end

end

class Mammal < Animal

end

class GoodDog < Animal
	#attr_accessor :name

	#def initialize(n)
		#self.name = n
	#end

	def initialize(color)
		super
		@color = color
	end

	def speak
		#"#{self.name} says woof!"
		super + " from GoodDog class"
	end

end

class Cat < Mammal

end

class Dog < Mammal
	include Swimmable

end

class BadDog < Animal
	def initialize(age, name)
		super(name)
		@age = age
	end
end

class Fish < Animal
	include Swimmable
end



#sparky = GoodDog.new("Sparky")
#paws = Cat.new
#puts sparky.speak
#puts paws.speak
#bruno = GoodDog.new("brown")
#BadDog.new(2, "bear") 

sparky = Dog.new("Sparky")
neemo  = Fish.new("Nemo")
paws   = Cat.new("Paws")

sparky.swim                 # => I'm swimming!
neemo.swim                  # => I'm swimming!
#paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>

#puts "---Animal method lookup---"
#puts Animal.ancestors

fido = Animal.new("Fido")
fido.speak
fido.walk
fido.swim