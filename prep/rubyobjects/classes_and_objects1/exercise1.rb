# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#statesandbehaviors

class MyCar

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
		#puts "This object was initialized"
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
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed