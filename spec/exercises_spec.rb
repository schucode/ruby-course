require './exercises'
# require 'pry-debugger'

describe "Exercises" do
  describe ".ex0" do
    it "should return a string three times" do
      expect(Exercises.ex0("bob")).to eq("bobbobbob")
      expect(Exercises.ex0("wishes")).to eq("nope")
    end
  end

  describe ".ex1" do
    it "should return number of elements in array" do
      array = [1, 2, 3, 4]
      expect(Exercises.ex1(array)).to eq(4)
    end
  end

  describe ".ex2" do
    it "should return second element of an array" do
    array = [1, 2, 3, 4]
    expect(Exercises.ex2(array)).to eq(2)
    end
  end

end