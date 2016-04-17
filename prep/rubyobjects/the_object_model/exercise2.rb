
module CarType
	def classification(type)
		puts "#{type}"
	end
end

class Car
	include classification
end

porsche = car.new

module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new