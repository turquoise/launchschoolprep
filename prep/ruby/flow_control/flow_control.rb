puts "Put in a number"
a = gets.chomp.to_i

if a == 3
	puts "a is 3"
elsif a == 4
	puts "a is 4"
else
	puts "a is neither 3, nor 4"
end

def caps(string)
	if string.length > 10
		string.upcase
	else
		string
	end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")

#def number(num)
	#puts "Put in a number between 0 and 100 "
	#num = gets.chomp.to_i
	#if num >= 0 && num <= 50
		#puts "Your number was between 0 and 50"
	#elsif num >= 51 && num <= 100
		#puts "Your number was between 51 and 100"
	#elsif num >= 100
		#puts "Your number was larger than 100"
	#else
		#puts "Your number was not within the expected range."
	#end
#end

#number(101)

def evaluate_num(num)
	#puts "Please enter a number between 0 and 100."
	#num = gets.chomp.to_i
  	if num < 0
    	puts "You can't enter a negative num!"
  	elsif num <= 50
    	puts "#{num} is between 0 and 50"
  	elsif num <= 100
    	puts "#{num} is between 51 and 100"
  	else
    	puts "#{num} is above 100"
  	end
end



def evaluate_case1_num(num)
	#puts "Please enter a number between 0 and 100."
	#num = gets.chomp.to_i
	case
	when num < 0
		puts "You can't enter a negative number!"
	when num <= 50
		puts "#{num} is between 0 and 50"
	when num <= 100
		puts "#{num} is between 51 and 100"
	else
		puts "#{num} is above 100"
	end
			
end

def evaluate_case2_num(num)
	#puts "Please enter a number between 0 and 100."
	#num = gets.chomp.to_i
	case num
	when 0..50
		puts "#{num} is between 0 and 50"
	when 51..100
		puts "#{num} is between 51 and 100"
	else
		if num < 0
			puts "You can't enter a negative number!"
		else
			puts "#{num} is above 100"
		end
	end
end





evaluate_num(2)
evaluate_case1_num(5)
evaluate_case2_num(30)