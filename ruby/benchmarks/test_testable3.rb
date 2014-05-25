require 'benchmark'
require './testable.rb'

time = Benchmark.measure do
  testable = TestableClass3.new
  testable.calculate(10) == 2640
  testable = TestableClass3.new
  testable.calculate(100) == 25164150
  testable = TestableClass3.new
  testable.calculate(10) != 2641
end
puts time
