require './views/task_view'

class TaskController

  def initialize(repository)
    @repository = repository
    @view = TaskView.new
  end

  def list
    tasks = @repository.all
    @view.display(tasks)
  end

end