require './models/task'
require './Repositories/task_repository'
require './controllers/task_controller'

# Creating 3 level organisation repositories:
organisation = TaskReposity.new(nil)
region = TaskReposity.new(organisation)
area = TaskReposity.new(region)
location = TaskReposity.new(area)

# Creating a bunch of tasks

task_1 = Task.new("Wash floors")
task_a = Task.new("Order materials")
task_q = Task.new("Set sales targets")
task_x = Task.new("Sign Lease agreements")

# Adding tasks into the repositories

organisation.add(task_x)
region.add(task_q)
area.add(task_a)
location.add(task_1)

# Create a locaiton task controller
controller_1 = TaskController.new(location)


controller_1.list

