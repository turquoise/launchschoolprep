module Towable

	def can_tow?(pounds)
		pounds < 2000 ? true : false
	end

end



class Vehicle
	@@number_of_vehicles = 0
	attr_accessor :color
	attr_reader :year
	attr_reader :model

	def self.number_of_vehicles
		puts "This program has created #{@@number_of_vehicles} vehicles"
	end

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
		@@number_of_vehicles += 1
		
	end

	def self.gas_mileage(gallons, miles)
    	puts "#{miles / gallons} miles per gallon of gas"
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

	def age
		puts "Your #{self.model} is #{years_old} years old"
	end

	private

	def years_old
		Time.now.year - self.year
	end

end



class MyTruck < Vehicle
	include Towable
	NUMBER_OF_DOORS = 2
	def to_s
		"My truck is a #{color}, #{year}, #{@model}"
	end
end


class MyCar < Vehicle
	NUMBER_OF_DOORS = 4
	def to_s
		"My car is a #{color}, #{year}, #{@model}"
	end
end

lumina = MyCar.new(1997, 'white', 'cheva Lumina')
#lumina.color = 'black'
#puts lumina.color
#lumina.spray_paint('red')
#lumina.gas_mileage(13, 351)  # => "27 miles per gallon of gas"
#MyCar.gas_mileage(13, 400)

my_car = MyCar.new("2010", "silver", "Ford Focus")
truck = MyTruck.new('2010', 'white', 'Ford Tundra')
puts my_car  # => My car is a silver, 2010, Ford Focus.
puts truck

puts Vehicle.number_of_vehicles


puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

puts lumina.age   #=> "Your chevy lumina is 17 years old"