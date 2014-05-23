require "test_helper"
require 'capybara'

class TestableClass4Capybara < ActionDispatch::IntegrationTest
  def test_correct_return_value_with_10
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass4", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass4 with the n as 10. The result is: 55."
  end

  def test_correct_return_value_with_20
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass4", from: "Testable class"
    fill_in "Calculation value", with: "20"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass4 with the n as 20. The result is: 6765."
  end

  def test_false_return_value_with_10
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass4", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    assert_not page.has_content? "You tested TestableClass4 with the n as 10. The result is: 56."
  end
end