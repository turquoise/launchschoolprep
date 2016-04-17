arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |num|
	if num > 5
		puts "The number is #{num}"
	end
	
end

# one line version
arr.each { |number| puts number if number > 5 }

# multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end