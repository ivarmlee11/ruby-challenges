### Challenge 1 - Calculator

# Create a simple calculator that first asks the user what method they would like to use
# (addition, subtraction, multiplication, division) and then asks the user for two numbers,
 # returning the result of the method with the two numbers. Here is a sample prompt:

# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

puts "What is your first number?"
first_num = gets.chomp.to_i
puts "What is your second number?"
second_num = gets.chomp.to_i
puts "What calculation would you like to use? Add, subtract, multiply, or divide?"
calculation = gets.chomp
puts "You chose #{calculation}"
case calculation
when "add"
  answer_add = first_num + second_num
  puts answer_add
when "subtract"
  answer_sub = first_num - second_num
  puts answer_sub
when "multiply"
  answer_mult = first_num * second_num
  puts answer_mult
when "divide"
  answer_divide = first_num / second_num
  puts answer_divide
else
  puts "Please choose add, subtract, multiply, or divide"
end
