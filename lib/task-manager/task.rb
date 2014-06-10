
class TM::Task 
	attr_reader :name, :description, :priority, :complete, :pro_id
	attr_accessor :id, :complete


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
