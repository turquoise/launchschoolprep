class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def public_disclosure
    puts "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    self.age / DOG_YEARS
  end
end

class Animal
  def a_public_method
    puts "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

class Parent
  def say_hi
    puts "Hi from Parent."
  end
end

class Child < Parent

  def say_hi
    puts "Hi from Child."
  end


end

sparky = GoodDog.new("Sparky", 4)
#sparky.human_years
sparky.public_disclosure
fido = Animal.new
fido.a_public_method        # => Will this work? Yes, I'm protected!

Parent.superclass
parent = Parent.new
parent.say_hi
child = Child.new
child.say_hi

son = Child.new
son.send :say_hi

c = Child.new
puts c.instance_of? Child # true
puts c.instance_of? Parent # false


