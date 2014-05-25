require 'benchmark'
require './testable.rb'

time = Benchmark.measure do
  testable = TestableClass1.new
  testable.calculate(10) == 10
  testable = TestableClass1.new
  testable.calculate(100) == 100
  testable = TestableClass1.new
  testable.calculate(10) != 100
end
puts time
