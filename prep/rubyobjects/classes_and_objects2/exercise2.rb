class MyCar
	attr_accessor :color
	attr_reader :year

	def self.gas_mileage(gallons, miles)
    	puts "#{miles / gallons} miles per gallon of gas"
  	end

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
		#puts "This object was initialized"
	end

	def to_s
		"My car is a #{color}, #{year}, #{@model}"
	end

	def gas_mileage(gallons, miles)
    	puts "#{miles / gallons} miles per gallon of gas"
  	end

	def speed_up(number)
		@current_speed += number
		puts "You push the gas and accelerate #{number} mph."
	end

	def brake(number)
		@current_speed -= number
		puts "You push the brake and decelerate #{number} mph"
	end

	def current_speed
		puts "You are going #{@current_speed} mph."
	end

	def shut_down
		@current_speed = 0
		puts "Let's park this bad boy!"
	end

	def spray_paint(color)
		self.color = color
		puts "The color of your car is #{color}"

	end

	
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.color = 'black'
puts lumina.color
lumina.spray_paint('red')
lumina.gas_mileage(13, 351)  # => "27 miles per gallon of gas"
MyCar.gas_mileage(13, 400)

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car  # => My car is a silver, 2010, Ford Focus.
