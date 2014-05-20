require File.expand_path(File.dirname(__FILE__) + "/../../testable.rb")
require 'minitest/autorun'

class Spinach::Features::TestTestableclass4 < Spinach::FeatureSteps
  step 'I have testable class 4' do
    @problem = TestableClass4.new
  end

  step 'I have its method value of 10 as 55' do
    assert_equal(@problem.calculate(10), 55)
  end

  step 'I have its method value of 20 as 6765' do
    assert_equal(@problem.calculate(20), 6765)
  end

  step 'I don\'t have its method value of 10 as 56' do
    refute_equal(@problem.calculate(10), 56)
  end
end
