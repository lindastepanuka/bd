require './project_euler.rb'

describe ProjectEuler1, "calculation" do
  before(:each) do
    @problem = ProjectEuler1.new
    @problem.divisor_1 = 3
    @problem.divisor_2 = 5
  end

  it "returns correct values for 10" do
    expect(@problem.calculate(10)).to eq 23
  end

  it "returns correct values for 100" do
    expect(@problem.calculate(100)).to eq 2318
  end

  it "returns correct values for 1000" do
    expect(@problem.calculate(1000)).to eq 233168
  end
end

describe ProjectEuler6, "calculation" do
  before(:each) do
    @problem = ProjectEuler6.new
  end

  it "returns correct value for 10" do
    expect(@problem.calculate(10)).to eq 2640
  end

  it "returns correct value for 100" do
    expect(@problem.calculate(100)).to eq 25164150
  end
end