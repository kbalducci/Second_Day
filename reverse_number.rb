puts "How to play: You will pick a number from 1 to 100 and then I will try to guess your number!"
user_answer = gets.chomp
comp_num = rand(100)

while comp_num != user_answer.to_i do
	puts "Type 'H' if my number is too high. Type 'L' if my number is too low."

