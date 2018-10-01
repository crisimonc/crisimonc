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
  puts %w[Rock Scissors Paper].sample
end

def user_choice
  puts "What's your choice?"
  user_choice = gets.chomp
  puts 'Type proper input!' until %w[Rock Scissors Paper].include? user_choice
end

def play_game
  result = ''
  while result != 'You win'
    user_choice
    computer_choice
    if computer_choice == user_choice
      result = 'You draw'
    elsif (user_choice == 'Rock' && computer_choice == 'Scissors') || (user_choice == 'Paper' && computer_choice == 'Rock') || (user_choice == 'Scissors' && computer_choice == 'Paper')
      result = 'You win'
      break
    else
      result = 'You lose'
    end
  end
end

puts play_game
