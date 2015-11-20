def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"  
end

def get_user_input
  response = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_sum = deal_card + deal_card
  display_card_total(card_sum)
  card_sum
  # code #initial_round here
end

def hit?(number)
 prompt_user
input = get_user_input
if input == "s"
 number
elsif input == "h"
deal_card+number
  else
    invalid_command
  end
end

def invalid_command
puts "Please enter a valid command"  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
current_sum=hit?(initial_round)
display_card_total(current_sum)
  until current_sum>=21  do
  current_sum=hit?(current_sum)
  end
  end_game(current_sum)
end
    
