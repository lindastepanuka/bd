require './project_euler.rb'
require "minitest/autorun"

describe ProjectEuler1, "calculation" do
  before(:each) do
    @problem = ProjectEuler1.new
    @problem.divisor_1 = 3
    @problem.divisor_2 = 5
  end

  it "returns correct values for 10" do
    @problem.calculate(10).must_equal 23
  end

  it "returns correct values for 100" do
    @problem.calculate(100).must_equal 2318
  end

  it "returns correct values for 1000" do
    @problem.calculate(1000).must_equal 233168
  end
end

describe ProjectEuler6, "calculation" do
  before(:each) do
    @problem = ProjectEuler6.new
  end

  it "returns correct value for 10" do
    @problem.calculate(10).must_equal 2640
  end

  it "returns correct value for 100" do
    @problem.calculate(100).must_equal 25164150
  end
end
