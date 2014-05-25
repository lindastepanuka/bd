require "test_helper"
require 'capybara'

class TestableClass3Capybara < ActionDispatch::IntegrationTest
  def test_correct_return_value_with_10
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass3", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass3 with the n as 10. The result is: 2640."
  end

  def test_correct_return_value_with_100
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass3", from: "Testable class"
    fill_in "Calculation value", with: "100"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass3 with the n as 100. The result is: 25164150."
  end

  def test_false_return_value_with_10
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass3", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    assert_not page.has_content? "You tested TestableClass3 with the n as 10. The result is: 2641."
  end
end
