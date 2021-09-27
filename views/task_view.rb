class TaskView

  def display(tasks)
    puts "Regent Street Timeline"
    puts "------------------------"
    
    tasks.each do |task|
      puts "* #{task.title}"
    end
  end
end