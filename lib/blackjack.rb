def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  "#{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    sum += deal_card
    sum
  end
  display_card_total(sum)
  sum
end


def hit?(card_total)
  prompt_user
  answer = get_user_input
  case answer
  when "s"
    
  when "h"
    card_total += deal_card
  else
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
    end_game(card_total)
end
