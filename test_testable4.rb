require 'benchmark'
require './testable.rb'

time = Benchmark.measure do
  testable = TestableClass4.new
  testable.calculate(10) == 55
  testable = TestableClass4.new
  testable.calculate(20) == 6765
  testable = TestableClass4.new
  testable.calculate(10) != 56
end
puts time
