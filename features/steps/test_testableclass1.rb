require File.expand_path(File.dirname(__FILE__) + "/../../testable.rb")
require 'minitest/autorun'

class Spinach::Features::TestTestableclass1 < Spinach::FeatureSteps
  step 'I have testable class 1' do
    @problem = TestableClass1.new
  end

  step 'I have its method value of 10 as 10' do
    assert_equal(@problem.calculate(10), 10)
  end

  step 'I have its method value of 100 as 100' do
    assert_equal(@problem.calculate(100), 100)
  end

  step 'I have its method value of 1000 as 1000' do
    assert_equal(@problem.calculate(1000), 1000)
  end

  step 'I don\'t have its method value of 10 as 100' do
    refute_equal(@problem.calculate(10), 100)
  end
end
