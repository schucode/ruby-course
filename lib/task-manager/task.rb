
class TM::Task 
	attr_reader :description, :priority, :pro_id
	attr_accessor :id, :pro_id, :done_status, :all_tasks, :create_time


	@@counter = 0
	@@all_tasks = []

	def initialize(description, priority)
		@description = description
		@id = @@counter
		@pro_id = nil
		@priority = priority
		@done_status = false
		@create_time = nil
		@@all_tasks << self
		@@counter += 1
	end
end
