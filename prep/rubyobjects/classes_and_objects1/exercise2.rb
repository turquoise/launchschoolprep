class MyCar
	attr_accessor :color
	attr_reader :year

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
lumina.color = 'black'
puts lumina.color
