require File.expand_path(File.dirname(__FILE__) + "/../../testable.rb")
require 'minitest/autorun'

class Spinach::Features::TestTestableclass3 < Spinach::FeatureSteps
  step 'I have testable class 3' do
    @problem = TestableClass3.new
  end

  step 'I have its method value of 10 as 2640' do
    assert_equal(@problem.calculate(10), 2640)
  end

  step 'I have its method value of 100 as 25164150' do
    assert_equal(@problem.calculate(100), 25164150)
  end

  step 'I don\'t have its method value of 10 as 2641' do
    refute_equal(@problem.calculate(10), 2641)
  end
end
