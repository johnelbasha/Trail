class TaskReposity

  attr_reader :tasks, :superior_repo

  def initialize(superior_repo)
    @tasks = []
    @superior_repo = superior_repo

  end

  def fetch_superior_tasks(sup_repo, local_tasks)
    if sup_repo == nil
      return local_tasks
    else
      sup_repo.tasks.each do |task|
        local_tasks.unshift(task)
      end
      fetch_superior_tasks(sup_repo.superior_repo, local_tasks)
    end

    return local_tasks
  end
  
  def all
    fetch_superior_tasks(@superior_repo, @tasks)
  end

  def add(task)
    @tasks << task
  end

end