
class TM::Task 
	attr_reader :description, :priority, :complete, :pro_id
	attr_accessor :id, :complete


	@@counter = 0
	@@all_tasks = []
	def initialize(description, priority, dummy)
		@description = description
		@id = @@counter
		@pro_id = nil
		@priority = priority
		@complete = false
		@@all_tasks << self
		@@counter += 1
	end
end
