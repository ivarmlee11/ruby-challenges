
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
# Write three methods to perform these calculations and output the result to the user. Here is a sample output:

# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```

def bank_account
  balance = 4000
  def deposit_account(balance, deposit)
    balance = balance + deposit
    puts balance
  end
  def withdraw_account(balance, withdraw)
    balance = balance - withdraw
    puts balance
  end
  def check_balance(balance)
    puts balance
  end

  puts "Your current balance is #{balance}"
  puts "What would you like to do today?"
  puts "You can deposit, withdraw, or check_balance..."
  user_action = gets.chomp

  case user_action
  when "deposit"
    puts "How much you wanna' put in your account?"
    deposit = gets.chomp.to_i
    deposit_account(balance, deposit)
  when "withdraw"
    puts "How much you wanna' take out of your account?"
    withdraw = gets.chomp.to_i
    withdraw_account(balance, withdraw)
  when "check_balance"
    check_balance(balance)
  end
end
bank_account()


