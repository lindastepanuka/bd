require "test_helper"
require 'watir'

class TestableClass1WatirTest < ActionDispatch::IntegrationTest
  def setup
    @browser = Watir::Browser.new
  end

  def test_correct_return_value_with_10
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "10"
    @browser.select_list(label: "Testable class").select "TestableClass1"
    @browser.button(value: "Save Testable").click
    assert @browser.text.include?("You tested TestableClass1 with the n as 10. The result is: 10.")
  end

  def test_correct_return_value_with_100
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "100"
    @browser.select_list(label: "Testable class").select "TestableClass1"
    @browser.button(value: "Save Testable").click
    assert @browser.text.include?("You tested TestableClass1 with the n as 100. The result is: 100.")
  end

  def test_false_return_value_with_10
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "100"
    @browser.select_list(label: "Testable class").select "TestableClass1"
    @browser.button(value: "Save Testable").click
    assert_not @browser.text.include?("You tested TestableClass1 with the n as 100. The result is: 100.")
  end

  def teardown
    @browser.close
  end
end