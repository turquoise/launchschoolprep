#i = 0
#loop do
  #i += 2
  #puts i
  #if i == 10
    #break       # this will cause execution to exit the loop
  #end
#end

i = 0
loop do
  i += 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end


puts "Put a number"
x = gets.chomp.to_i

while x >= 0
	puts "The number was #{x}"
	x -= 1
end

puts "Done!"

puts "Put another number"
y = gets.chomp.to_i

until y < 0
	puts "The number was #{y}"
	y -= 1
end

puts "Done!"

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'

puts "Enter a number"
z = gets.chomp.to_i

for i in 1..z do
	puts "The number was #{i}"
end

puts "Done!"

a = [1,2,3,4,5]

for i in a do
	puts "The number is #{i} in the array"
end

puts "Done!"

b = 0

while b <= 10
	if b.odd?
		puts "The number #{b} is odd"
	end
	b += 1
end

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts "The name is #{name}"}

x = 1
names.each do |name|
	puts "#{x}. #{name}"
	x += 1
end


def fibonacci(number)
	if number < 2
		number
	else
		fibonacci(number - 1) + fibonacci(number -2)
	end
end

puts fibonacci(6)


