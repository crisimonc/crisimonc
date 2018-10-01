class Router
  def intialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      answer = gets.chomp.to_i
      dispatch(answer)
    end
  end

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '3 - Mark a task as done'
    puts '4 - Remove a task'
    puts '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
