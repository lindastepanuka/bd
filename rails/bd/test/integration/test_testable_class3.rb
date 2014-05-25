require "test_helper"
require 'watir'

class TestableClass3WatirTest < ActionDispatch::IntegrationTest
  def setup
    @browser = Watir::Browser.new
  end

  def test_correct_return_value_with_10
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "10"
    @browser.select_list(label: "Testable class").select "TestableClass3"
    @browser.button(value: "Save Testable").click
    assert @browser.text.include?("You tested TestableClass3 with the n as 10. The result is: 2640.")
  end

  def test_correct_return_value_with_100
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "100"
    @browser.select_list(label: "Testable class").select "TestableClass3"
    @browser.button(value: "Save Testable").click
    assert @browser.text.include?("You tested TestableClass3 with the n as 100. The result is: 25164150.")
  end

  def test_false_return_value_with_10
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "10"
    @browser.select_list(label: "Testable class").select "TestableClass3"
    @browser.button(value: "Save Testable").click
    assert_not @browser.text.include?("You tested TestableClass3 with the n as 10. The result is: 2641.")
  end

  def teardown
    @browser.close
  end
end