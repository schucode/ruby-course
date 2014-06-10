require 'spec_helper'

describe 'Task' do
  
	before do
    @task = TM::Task.new("mytask", "doing stuff", 1)
  end

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  it "should have a project id" do
  	i = @task.stub(:id).and_return(4)
  	expect(@task.id).to eq(4)
	end

	it "should have a description" do
		expect(@task.description).to eq("doing stuff")
	end

	xit "should have a priority number" do
		p = @task.stub(:priority).and_return(10)
		expect(@task.priority).and_return(10)
	end

	xit "should have a completion status associated with its id: true/false" do
		expect(@task.complete).and_return(false)
	end

end





# A new task can be created with a project id, description, and priority number
# A task can be marked as complete, specified by id