puts "What is your first name?"
first_name = gets.chomp
puts "Hello " + first_name
puts "What is your last name?"
last_name = gets.chomp
puts "Great.  So your full name is " + first_name + " " + last_name + "."


puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be: "
puts age + 10
puts "In 20 years you will be: "
puts age + 20
puts "In 30 years you will be: "
puts age + 30
puts "In 40 years you will be: "
puts age + 40

10.times do
	puts first_name
end