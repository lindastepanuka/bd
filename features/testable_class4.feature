#encoding: utf-8
Feature: Test TestableClass4
  In order to check testable classes
  As a thesis candidate
  I should be able to run this scenario and see that the steps pass (green like a cuke)

  Scenario: With 10
    Given I have testable class 4
    Then I have its method value of 10 as 55

  Scenario: With 100
    Given I have testable class 4
    Then I have its method value of 20 as 6765

  Scenario: With 10 failing
    Given I have testable class 4
    Then I don't have its method value of 10 as 56