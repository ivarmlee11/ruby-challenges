### Challenge 4 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100.
# Once the user guesses a number, the program should say, higher, lower, or
# tell the user that he got the number correct.  The user should continue to
#  make guesses until he guesses correctly. Also, once the user guesses correctly,
#   the program should print the number of guesses needed to arrive at the correct
#   answer. Below is sample output:

# ```
# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries

puts "guess a random number twixt 0 and 100"
number = gets.chomp.to_i

def random_guesser(num)
puts "You guessed #{num}"
rando = rand(101)
# puts "Computer guessed #{rando}"
counter = 1
while num != rando
  if num > rando
    puts "Guess a lower number"
    num = gets.chomp.to_i
    counter += 1
  elsif num < rando
    puts "Guess a higher number"
    num = gets.chomp.to_i
    counter += 1
  else
    puts "Nailed it in #{counter} tries"
    counter += 1
  end
end
puts "Nailed it in #{counter} tries"
end

random_guesser(number)
