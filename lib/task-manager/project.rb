
class TM::Project #basically a collection of tasks
	attr_reader :name, :id

	@@counter = 0

	def initialize(name)
		@name = name
		@id = @@counter
		@@counter += 1
	end

	def new_test
	end

	def get_complete_tasks
	end

	def get_incomplete_tasks
	end

end
