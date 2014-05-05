#encoding: utf-8
Feature: Test ProjectEuler1
  In order to verify that cucumber is installed and configured correctly
  As an aspiring BDD fanatic
  I should be able to run this scenario and see that the steps pass (green like a cuke)

  Scenario: With 10
    Given I have project euler 1
    When I set its divisor_1 to 3
    When I set its divisor_2 to 5
    Then I have its method value of 10 as 23

  Scenario: With 100
    Given I have project euler 1
    When I set its divisor_1 to 3
    When I set its divisor_2 to 5
    Then I have its method value of 100 as 2318

  Scenario: With 100
    Given I have project euler 1
    When I set its divisor_1 to 3
    When I set its divisor_2 to 5
    Then I have its method value of 1000 as 233168