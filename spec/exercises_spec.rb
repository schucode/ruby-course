require './exercises'
require 'pry-byebug'

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

  describe ".ex3" do
    it "should return the sum of the given array" do
      array = [2, 4, 5, 1]
      expect(Exercises.ex3(array)).to eq (12)
    end
  end

  describe ".ex4" do
    it "should return the maximum of the given array" do
      array = [5, 7, 2, 9]
      expect(Exercises.ex4(array)).to eq(9)
    end
  end

  describe ".ex5" do
    it "should print each element" do
      array = [23, 5, 6, 4]
      expect(STDOUT).to receive(:puts).with(23)
      expect(STDOUT).to receive(:puts).with(5)
      expect(STDOUT).to receive(:puts).with(6)
      expect(STDOUT).to receive(:puts).with(4)
      Exercises.ex5(array)
    end
  end

  describe ".ex6" do
    it "change the last element in the array to 'panda'" do
      array = ["boo", "blah", "mmm"]
      Exercises.ex6(array)
      expect(array.last).to eq("panda")
    end

    xit "changes last element to 'Godzilla' if already 'panda'" do
      array = ["boo", "blah", "panda"]
      Exercises.ex6(array)
      expect(array.last).to eq("Godzilla")
    end
  end

end