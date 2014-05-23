#encoding: utf-8
Feature: Test TestableClass1
  In order to verify that cucumber is installed and configured correctly
  As an aspiring BDD fanatic
  I should be able to run this scenario and see that the steps pass (green like a cuke)

  Scenario: With 10
    Given I have testable class 1
    Then I have its method value of 10 as 10

  Scenario: With 100
    Given I have testable class 1
    Then I have its method value of 100 as 100

  Scenario: With 10 failing
    Given I have testable class 1
    Then I don't have its method value of 10 as 100