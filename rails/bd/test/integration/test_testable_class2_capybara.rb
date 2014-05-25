require "test_helper"
require 'capybara'

class TestableClass2Capybara < ActionDispatch::IntegrationTest
  def test_correct_return_value_with_10
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass2 with the n as 10. The result is: 23."
  end

  def test_correct_return_value_with_100
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "100"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass2 with the n as 100. The result is: 2318."
  end

  def test_correct_return_value_with_1000
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "1000"
    click_button "Save Testable"
    assert page.has_content? "You tested TestableClass2 with the n as 1000. The result is: 233168."
  end

  def test_false_return_value_with_10
    visit new_calculation_testable_class_index_path
    assert page.has_content? "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    assert_not page.has_content? "You tested TestableClass2 with the n as 10. The result is: 24."
  end
end
