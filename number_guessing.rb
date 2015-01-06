puts "Please pick a number from 1 to 100."
comp_num = rand(100)
user_answer = gets.chomp


while user_answer.to_i != comp_num do 

	if user_answer.to_i > comp_num
		puts "That is too high! Please guess again."
		user_answer = gets.chomp

	elsif user_answer.to_i < comp_num
		puts "That is too low! Please guess again." 
		user_answer = gets.chomp
	end
end
	puts "Wow! You guessed my number!"

