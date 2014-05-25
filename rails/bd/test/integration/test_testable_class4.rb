require "test_helper"
require 'watir'

class TestableClass4WatirTest < ActionDispatch::IntegrationTest
  def setup
    @browser = Watir::Browser.new
  end

  def test_correct_return_value_with_10
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "10"
    @browser.select_list(label: "Testable class").select "TestableClass4"
    @browser.button(value: "Save Testable").click
    assert @browser.text.include?("You tested TestableClass4 with the n as 10. The result is: 55.")
  end

  def test_correct_return_value_with_20
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "20"
    @browser.select_list(label: "Testable class").select "TestableClass4"
    @browser.button(value: "Save Testable").click
    assert @browser.text.include?("You tested TestableClass4 with the n as 20. The result is: 6765.")
  end

  def test_false_return_value_with_10
    @browser.goto new_calculation_testable_class_index_path
    assert @browser.text.include?("Calculate value in a testable class")
    @browser.text_field(label: "Calculation value").set "10"
    @browser.select_list(label: "Testable class").select "TestableClass4"
    @browser.button(value: "Save Testable").click
    assert_not @browser.text.include?("You tested TestableClass4 with the n as 10. The result is: 56.")
  end

  def teardown
    @browser.close
  end
end