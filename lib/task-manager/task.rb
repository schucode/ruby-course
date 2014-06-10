
class TM::Task 
	attr_reader :name, :description, :id, :priority, :complete
	@@counter = 0

	def initialize(name, description, priority)
		@name = name
		@description = description
		@id = @@counter
		@priority = priority
		@complete = false
		@@counter += 1
	end
end
