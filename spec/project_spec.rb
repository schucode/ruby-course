require 'spec_helper'

describe 'Project' do
  it "exists" do
    expect(TM::Project).to be_a(Class)
  end

  xit "must have a name" do
  	project = TM::Project.new("whatever")
  	expect(project.name).to eq("whatever")
  end

  xit "must have an id" do
  	project = TM::Project.new("whatever")
  	expect()
  end
end
