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

    it "changes last element to 'Godzilla' if already 'panda'" do
      array = ["boo", "blah", "panda"]
      Exercises.ex6(array)
      expect(array.last).to eq("Godzilla")
    end
  end

  describe ".ex7" do
    it "should add a copy of the string to the end of array if string exists in array" do
      a = ["word", "apple", "goose"]

      Exercises.ex7(a, "astro")
      expect(a.last).to eq("goose")

      Exercises.ex7(a, "apple")
      expect(a.last).to eq("apple")

    end
  end

  describe ".ex8" do
    it "should print name and occupation from hashes in array" do
      people = [{:name => 'Bob', :occupation => 'Builder'}, {:name => 'Nick', :occupation => 'Teacher'}]
      expect(STDOUT).to receive(:puts).with("Bob: Builder")
      expect(STDOUT).to receive(:puts).with("Nick: Teacher")
      Exercises.ex8(people)
    end 
  end

  describe ".ex9" do
    it "should return true if in leap year" do
      leap = Time.new(2012)
      Time.stub(:now).and_return(leap)
      expect(Exercises.ex9(leap)).to eq(true)
    end

    it "should return false if not in leap year" do
      no_leap = Time.new(2013)
      Time.stub(:now).and_return(no_leap)
      expect(Exercises.ex9(no_leap)).to eq(false)
    end
  end

end
























