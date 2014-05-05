require 'minitest/autorun'
require './project_euler.rb'

class TestProjectEuler1 < MiniTest::Unit::TestCase
  def setup
    @problem = ProjectEuler1.new
    @problem.divisor_1 = 3
    @problem.divisor_2 = 5
  end

  def test_problem_1_for_10
    assert_equal 23, @problem.calculate(10)
  end

  def test_problem_1_for_100
    assert_equal 2318, @problem.calculate(100)
  end

  def test_problem_1_for_1000
    assert_equal 233168, @problem.calculate(1000)
  end
end

class TestProjectEuler6 < MiniTest::Unit::TestCase
  def setup
    @problem = ProjectEuler6.new
  end

  def test_problem_6_for_10
    assert_equal 2640, @problem.calculate(10)
  end

  def test_problem_6_for_100
    assert_equal 25164150, @problem.calculate(100)
  end
end