# CONTROLLER
require_relative 'task_view'
require_relative 'task'

class TaskController
  def initialize(repo)
    @repo = repo # instance of a repository >> TaskRepository.new
    @view = TaskView.new
  end

  def list
    display_tasks
  end

  def create
    # 1. ask user for a description
    # 2. create a Task instance with given description
    # 3. store the new task in the repository
    description = @view.ask_user_for_description
    task = Task.new(description)
    @repo.add(task)
  end

  def destroy
    # 0. show the user a list with indexes
    display_tasks
    # 1. ask user for an index
    index = @view.ask_user_for_index
    # 2. find that specific task
    @repo.find(index)
    # 3. delete that task
    @repo.remove(index)
  end

  def mark_as_done
    # 0. show the user a list with indexes
    display_tasks
    # 1. ask user for index
    index = @view.ask_user_for_index
    # 2. find the specific task
    task = @repo.find(index)
    # 3. mark as done
    task.mark_as_done!
  end

  private # I don-t want a developer or user to know how to retrieve all the tasks

  def display_tasks
    # get the array from the repo
    tasks = @repo.all
    # display all the tasks
    @view.display_tasks(tasks)
  end
end
