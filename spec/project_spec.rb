require 'spec_helper'

describe 'Project' do

	before do
    @project = TM::Project.new("project one")
  end

  it "exists" do
    expect(TM::Project).to be_a(Class)
  end

  it "must have a name" do
  	expect(@project.name).to eq("project one")
  end

  it "must have an id" do
  	task = TM::Task.new("mytask", "doing stuff", 1, @project)
  	i = task.stub(:id).and_return(34)
  	expect(task.id).to eq(34)
  end

  it "should be mark a test as complete using its task id" do
  	task = TM::Task.new("mytask", "doing stuff", 1, @project)

  	expect(@project).to receive(:completed).with(1) { 
  			task.complete = true
  	 }
  	@project.completed(1)
  	expect(task.complete).to eq(true)
  end

  xit "can retrieve a list of all complete tasks, sorted by creation date" do
  end

  xit "A project can retrieve a list of all incomplete tasks, sorted by priority" do
	end

	xit "If two tasks have the same priority number, the older task gets priority" do
	end

end

# #expect(@task).to receive(:complete, 3).and_return(false)
  	# task = TM::Task.new("somename", "do stuff", 3, @project)
  	# task.stub(:id).and_return(23)
  	# @project.set_complete(23)
  	# expect(task.complete).to eq(true)



