require 'benchmark'
require './testable.rb'

time = Benchmark.measure do
  testable = TestableClass2.new
  testable.calculate(10) == 23
  testable = TestableClass2.new
  testable.calculate(100) == 2318
  testable = TestableClass2.new
  testable.calculate(1000) == 233168
  testable = TestableClass2.new
  testable.calculate(10) != 24
end
puts time
