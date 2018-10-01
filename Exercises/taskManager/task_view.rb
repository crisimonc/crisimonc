# in general all the gets and puts are here
class TaskView
#  def initialize(args)
#  end

  def ask_user_for_description
    p "please, give me a description"
    return gets.chomp
  end

  def ask_user_for_index
    p "please, give me an index"
    return gets.chomp.to_i - 1
  end

  def display_tasks(tasks)  # it's an array of Task instances
    tasks.each_with_index do |task, index|
      task.done? ? "[X]" : "[ ]"
      p "#{done} - #{index + 1} - #{task}"
    end
  end
end
