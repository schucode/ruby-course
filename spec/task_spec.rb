require 'spec_helper'

describe 'Task' do
  
	before do
		@project = TM::Project.new("coolproject")
    	@task = TM::Task.new("doing stuff", 1, @project)
  end

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  it "should have a task id" do
  	i = @task.stub(:id).and_return(4)
  	expect(@task.id).to eq(4)
  end

  it "should get the project id of the project its created from" do
  	i = @task.stub(:pro_id).and_return(4)
  	expect(@task.pro_id).to eq(4)
	end

	it "should have a description" do
		expect(@task.description).to eq("doing stuff")
	end

	it "should have a priority number" do
		p = @task.stub(:priority).and_return(10)
		expect(@task.priority).to eq(10)
	end

	it "should have a completion status associated with its id: true/false" do
		expect(@task.complete).to eq(false)
	end

end





# A new task can be created with a project id, description, and priority number
# A task can be marked as complete, specified by id