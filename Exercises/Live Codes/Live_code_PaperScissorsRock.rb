require 'pry'
#COMPUTER_CHOICE = ['Rock', 'Paper', 'Scissors']
#
#def play_game
#  loop do
#    puts "What's your choice?"
#    user_choice = gets.chomp
# #while COMPUTER_CHOICE.include?(user_choice)
# computer_choice = COMPUTER_CHOICE.sample
# puts "The computer choice is #{computer_choice}"
# if user_choice == computer_choice
#  puts "You draw"
#  puts "What's your choice?"
#  user_choice = gets.chomp
#elsif (user_choice == 'Rock' && computer_choice == 'Scissors') || (user_choice == 'Paper' && computer_choice == 'Rock') || (user_choice == 'Scissors' && computer_choice == 'Paper')
#  break
#elsif !COMPUTER_CHOICE.include?(user_choice)
#  puts "Type proper input, Idiot"
#else
#  puts "You lose"
#  puts "What's your choice?"
#  user_choice = gets.chomp
#end
#  #  end
#end
#
#end
#
#play_game

def computer_choice
  %w[Rock Scissors Paper].sample
end

def player_choice
  puts "What's your choice?"
  user_choice = gets.chomp
  unless %w[Rock Scissors Paper].include? user_choice
    puts 'Type proper input'
    user_choice = gets.chomp
  end
  user_choice
end

def play_game
  result = ''
  while result != 'You win'
    user_choice = player_choice
    random_choice = computer_choice
    puts random_choice
    if (user_choice == 'Rock' && random_choice == 'Scissors') || (user_choice == 'Paper' && random_choice == 'Rock') || (user_choice == 'Scissors' && random_choice == 'Paper')
      result = 'You win'
      puts result
      break
    elsif user_choice == random_choice
      result = 'You draw'
      puts result
    else
      result = 'You lose'
      puts result
    end
  end
end

play_game
