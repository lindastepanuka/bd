require './testable.rb'

describe TestableClass1, "calculation" do
  before(:each) do
    @problem = TestableClass1.new
  end

  it "returns correct values for 10" do
    expect(@problem.calculate(10)).to eq 10
  end

  it "returns correct values for 100" do
    expect(@problem.calculate(100)).to eq 100
  end

  it "returns correct values for 10" do
    expect(@problem.calculate(10)).not_to eq 100
  end
end

describe TestableClass2, "calculation" do
  before(:each) do
    @problem = TestableClass2.new(3,5)
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

  it "returns correct values for 10" do
    expect(@problem.calculate(10)).not_to eq 24
  end
end

describe TestableClass3, "calculation" do
  before(:each) do
    @problem = TestableClass3.new
  end

  it "returns correct value for 10" do
    expect(@problem.calculate(10)).to eq 2640
  end

  it "returns correct value for 100" do
    expect(@problem.calculate(100)).to eq 25164150
  end

  it "returns correct value for 10" do
    expect(@problem.calculate(10)).not_to eq 2641
  end
end

describe TestableClass4, "calculation" do
  before(:each) do
    @problem = TestableClass4.new
  end

  it "returns correct value for 10" do
    expect(@problem.calculate(10)).to eq 55
  end

  it "returns correct value for 100" do
    expect(@problem.calculate(20)).to eq 6765
  end

  it "returns correct value for 10" do
    expect(@problem.calculate(10)).not_to eq 56
  end
end