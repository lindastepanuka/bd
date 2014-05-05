require 'riot'
require './project_euler.rb'

context "ProjectEuler1" do
  setup do
    @problem = ProjectEuler1.new
    @problem.divisor_1 = 3
    @problem.divisor_2 = 5
    @problem
  end

  asserts("values for 10") { topic.calculate(10) }.equals(23)
  asserts("values for 100") { topic.calculate(100) }.equals(2318)
  asserts("values for 1000") { topic.calculate(1000) }.equals(233168)
end

context "ProjectEuler6" do
  setup do
    ProjectEuler6.new
  end

  asserts("values for 10") { topic.calculate(10) }.equals(2640)
  asserts("values for 100") { topic.calculate(100) }.equals(25164150)
end