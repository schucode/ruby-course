
class TM::Client

  def self.clearOut
    TM::Project.all_projects = []
    TM::Project.counter = 0
    TM::Task.all_tasks = []
    TM::Task.counter = 0
  end

  def self.show_projects
    TM::Project.all_projects.each { |i| puts i.name }
  end

  def self.make_project(name)
    TM::Project.new(name)
  end

  def self.show_incomplete(project_id)
     incomplete_tasks = TM::Task.all_tasks.select do |i| 
       i.pro_id == project_id & i.done_status == false
     end

    incomplete_tasks.each { |i| puts i.description }
  end

  def self.show_completed(project_id)
    complete_tasks = TM::Task.all_tasks.select do |i| 
      i.pro_id == project_id & i.done_status == false
    end
    complete_tasks.each { |i| puts i.description }
  end

  def self.create_task(project_id, priority, description) 
    proj = TM::Project.all_projects.find { |i| i.id == project_id } 
    proj.add_task(description, priority)
  end

  def finished_task(task_id) 
    task = TM::Task.all_tasks.find {|i| i.id == task_id}
    proj = TM::Project.all_projects.find {|i| i.id == task.pro_id}
    proj.finish_task(task_id)
  end

  def help
    puts "help - Show these commands again"
    puts "list - Provides a list of all projects"
    puts "create P - Create a project named P"
    puts "show P - Show tasks that have not been completed in project P"
    puts "history P - Show task that have been completed in Project P"
    puts "add P PRI D - add a task to project P with priority PRI and description D"
    puts "finish T - Make task T as completed"
  end

  self.clearOut()

  puts "Welcome to the Task Manager!"
  puts "What would you like to do today?"

  help
  # help - Show these commands again
#   xlist - List all projects
#   xcreate NAME - Create a new project with name=NAME
#   xshow PID - Show remaining tasks for project with id=PID
#   history PID - Show completed tasks for project with id=PID
#   xadd PID PRIORITY DESC - Add a new task to project with id=PID
#   mark TID - Mark task with id=TID as complete


  
  
  user_input = nil

  while user_input != "exit" do
    print "> "
    user_input = gets.chomp()
    input = user_input.split

    case input[0]
    when "help"
    when "list"
      puts "Here is a list of all the current projects: "
      self.show_projects
    when "create"
      proj = self.make_project(input[1])
      puts "Created project #{input[1]} with id #{proj.id}"
    when "show" 
      puts "Here are the remaining tasks for project with id #{input[1]}"
      project_id = input[1].to_i
      self.show_incomplete(project_id)
    when "history"
      puts "Here are the completed tasks for the project with id #{input[1]}"
      project_id = input[1].to_i
      self.show_completed(prject_id)
    when "add" 
      puts "Adding task to project #{}"
      project = input[1].to_i
      priority = input[2].to_i
      description = input[3]
      self.create_task(project, priority, description)
    when "finish"
      task = input[1].to_i
      finished_task(task)
    else
      puts "not a command"
    end
  end 
  puts "Have a great day!"

end
