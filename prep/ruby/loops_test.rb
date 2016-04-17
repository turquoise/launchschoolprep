x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

y = ""

while y != "STOP" do
	puts "Hi, How are you feeling?"
	ans = gets.chomp
	puts "Want me to ask you again?"
	y = gets.chomp	
end

top_five_games = [
	"mario brothers",
	"excite bike",
	"ring king",
	"castlevania",
	"double dragon"
]

top_five_games.each_with_index do |game, index |
	puts "#{index + 1}. #{game}"
end

def count_to_zero(number)
	if number <= 0
		puts "The #{number} is less than or equal to 0"
	else
		puts "The #{number} is greater than 0"
		count_to_zero(number - 1)
	end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)