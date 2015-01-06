QUESTIONS = [
  {
  :name => "What is the command to create a new git repo?", 
  :answers => [
  	'git new',
  	'git init',
  	'new git repo',
  	'create-github'
  	],
  	:correct_answer => 2
  },

  {
  :name => "What is my favorite sushi?",
  :answers => [
  	'Cali Roll',
  	'Sweet Potato Roll',
  	'Tuna',
  	'Shrimp'
  	],
  	:correct_answer =>2
  },
  {
  :name => "How many chairs are in this room?",
  :answers => [
  	10,
  	1,
  	11,
  	9
  	],
  	:correct_answer =>3
  },
  {
  :name => "How many continents are there?",
  :answers => [
  	7,
  	5,
  	6,
  	3
  	],
  	:correct_answer =>1
  },
  {
  :name => "How many states are in New England?",
  :answers => [
  	10,
  	6,
  	4,
  	9
	],
  	:correct_answer =>2
  }
]

correct_answers = 0
puts "Welcome to the quiz show!".upcase
puts "-" * 30

QUESTIONS.each do |question|
	puts question[:name]
	puts "-" * 25
	question [:answers].each_with_index do |answer, index|
		puts "#{index + 1} #{answer}"
	end
	print ' (1-4) -> '
	user_answer = gets.chomp

	if user_answer.to_i == question[:correct_answer] 
		puts "CORRECT!"
		correct_answers += 1

	else
		puts "INCORRECT"
		puts "\7"
	end
end

puts "Your score is #{(correct_answers.to_f / QUESTIONS.count.to_f) * 100} %"
puts "You got #{correct_answers} out of #{QUESTIONS.count} correct"

	