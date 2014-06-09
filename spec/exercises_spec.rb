require './exercises'
# require 'pry-debugger'

describe "Exercises" do
  describe ".ex0" do
    it "should return a string three times" do
      expect(Exercises.ex0("bob")).to eq("bobbobbob")
      expect(Exercises.ex0("wishes")).to eq("nope")
    end
  end
end