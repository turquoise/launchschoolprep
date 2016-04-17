def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts a
puts "Done!"

b = [1,2,3]
b.each { |e| puts e}
puts "Done!"

c = [1, 2, 3]
c.each { |e| puts e + 2 }
puts "Done!"

arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.each do |num|
	if arr.include?(number)
		puts "#{number} is indeed in the array."
	end
end

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
puts "The value of arr is #{arr}"

puts "Done!"

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
puts "The value of arr is #{arr}"

puts "Done!"

arr = [["test", "hello", "world"],["example", "mem"]]
puts "The word is #{arr[1][0]}"

puts "Done!"

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5)

#puts arr.index[5]

puts arr[5]

puts "Done!"

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

puts "The value of a is #{a}"
puts "The value of b is #{b}"
puts "The value of c is #{c}"

puts "Done!"

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

puts arr
puts "Done!"
puts new_arr

