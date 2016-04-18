person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
	puts "Bob's #{key} is #{value}"
end

puts "Done!"

def greeting(name, options= {})
	if options.empty?
		puts "Hi, my name is #{name}"
	else
		puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."

	end
end

greeting('Bob')
greeting('Mary', {age: 62, city: 'New York City'})
greeting("Tim", age: 62, city: "New York City")

puts "Done!"

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

 immediate_family = family.select do |k, v|
 	k == :sisters || k == :brothers
 end

 arr = immediate_family.values.flatten

 puts "The imediate family members are #{arr}"

 puts "Done!"

 cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}

puts "Done!"

opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

puts "Done!"

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "The person's name is #{person[:name]}"

puts "Done!"



if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

puts "Done!"

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  puts v
end

puts "Done!"


x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}