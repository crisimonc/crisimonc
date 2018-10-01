require_relative "task_repository"
require_relative "task_controller"
require_relative "router"

# DATABASE
repo = TaskRepository.new # I initialize the repository to start the controller
controller = TaskController.new(repo)
router = Router.new(controller)
router.run
