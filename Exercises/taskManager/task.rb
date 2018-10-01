# TASK MANAGER
class Task
  attr_accessor :description
  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    # remember to add ! if the method modifies the value of a variable
    @done = true
  end

end

# task_one = Task.new("create this task manager")
# p task_one


