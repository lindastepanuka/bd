require 'spec_helper'

describe TestableClass1 do
  it "should return correct value with testable value as 10" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass1", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass1 with the n as 10. The result is: 10."
  end

  it "should return correct value with testable value as 100" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass1", from: "Testable class"
    fill_in "Calculation value", with: "100"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass1 with the n as 100. The result is: 100."
  end

  it "should return correct value with testable value as 1000" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass1", from: "Testable class"
    fill_in "Calculation value", with: "1000"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass1 with the n as 1000. The result is: 1000."
  end
end

describe TestableClass2 do
  it "should return correct value with testable value as 10" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass2 with the n as 10. The result is: 23."
  end

  it "should return correct value with testable value as 100" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "100"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass2 with the n as 100. The result is: 2318."
  end

  it "should return correct value with testable value as 1000" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass2", from: "Testable class"
    fill_in "Calculation value", with: "1000"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass2 with the n as 1000. The result is: 233168."
  end
end

describe TestableClass3 do
  it "should return correct value with testable value as 10" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass3", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass3 with the n as 10. The result is: 2640."
  end

  it "should return correct value with testable value as 100" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass3", from: "Testable class"
    fill_in "Calculation value", with: "100"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass3 with the n as 100. The result is: 25164150."
  end
end

describe TestableClass4 do
  it "should return correct value with testable value as 10" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass4", from: "Testable class"
    fill_in "Calculation value", with: "10"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass4 with the n as 10. The result is: 55."
  end

  it "should return correct value with testable value as 20" do
    visit new_calculation_testable_class_index_path
    page.should have_content "Calculate value in a testable class"
    select "TestableClass4", from: "Testable class"
    fill_in "Calculation value", with: "20"
    click_button "Save Testable"
    page.should have_content "You tested TestableClass4 with the n as 20. The result is: 6765."
  end
end