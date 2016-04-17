
class GoodDog
	attr_accessor :name, :sort, :height, :weight

	def initialize(n, h, w)
		@name = n
		@height = h
		@weight = w
		#puts "This object was initialized"
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def change_info(n, h, w)
		self.name = n
		self.height = h
		self.weight = w
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
end


sparky = GoodDog.new("Sparky", '12 inches', '10 lbs')
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name
puts sparky.play("marbles")
sparky.change_info('Sparta', '24 inches', '45 lbs')
puts sparky.info

fido = GoodDog.new("Fido", '10 inches', '8 lbs')
puts fido.speak
puts fido.eats("bones")
puts fido.sleeps(true)
puts fido.play("walks")
puts fido.info