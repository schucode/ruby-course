
class TM::Task 
	attr_reader :name, :description, :id, :priority, :complete
	@@counter = 0
	@@all_tasks = []
	def initialize(name, description, priority, project)
		@name = name
		@description = description
		@id = @@counter
		@pro_id = project.id
		@priority = priority
		@complete = false
		@@all_tasks << self
		@@counter += 1
	end
end
