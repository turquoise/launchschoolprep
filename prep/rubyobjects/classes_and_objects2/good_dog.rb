class GoodDog
	DOG_YEARS = 7
	attr_accessor :name, :sort, :height, :weight, :age

	@@number_of_dogs = 0

	

	def initialize(n, h, w, a)
		self.name = n
		self.height = h
		self.weight = w
		self.age = a * DOG_YEARS
		#puts "This object was initialized"
		@@number_of_dogs += 1
	end

	def to_s
		"This dog's name is #{name} and it is #{age} in dog years."
	end

	def self.total_number_of_dogs
		@@number_of_dogs
		"So far #{@@number_of_dogs} dogs have been registered in the database."
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def change_info(n, h, w, a)
		self.name = n
		self.height = h
		self.weight = w
		self.age = a * DOG_YEARS
	end

	def info
		"#{name} weighs #{weight} and is #{height} tall."
	end

	def speak
		"#{name} says woof!"
	end

	def eats(type)
		@type = type
		"#{name} likes #{type} "
	end

	def sleeps(asleep)
		@asleep = asleep
		if (@asleep == false)
			"#{name} is not asleep"
		else
			"#{name} is asleep"
		end
	end

	def play(sort)
		@sort = sort
		if (sort == "marbles")
			"#{name} is like Snoopy!"
		elsif (sort == "walks")
			"#{name} is a normal dog"
		else
			"#{name} may not be getting enough exercise"
		end

	end

	def ssn_number(ssn)
		@ssn = ssn
		# converts '123-45-6789' to 'xxx-xx'6789'
		'xxx-xx' + @ssn.split('-').last
	end

	def self.what_am_i
		"I'm a GoodDog class!"
	end

	

end


sparky = GoodDog.new("Sparky", '12 inches', '10 lbs', 4)
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name
puts sparky.play("marbles")
sparky.change_info('Sparta', '24 inches', '45 lbs', 3)
puts sparky.info

fido = GoodDog.new("Fido", '10 inches', '8 lbs', 2)
puts fido.speak
puts fido.eats("bones")
puts fido.sleeps(true)
puts fido.play("walks")
puts fido.info
GoodDog.what_am_i
puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new("Snoopy", '10 inches', '8 lbs', 4)
dog2 = GoodDog.new("Rosy", '11 lbs', '7 lbs', 2)
puts GoodDog.total_number_of_dogs

puts sparky
puts sparky.age