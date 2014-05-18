require File.expand_path(File.dirname(__FILE__) + "/../../testable.rb")

#encoding: utf-8
Given(/^I have testable class (\d+)$/) do |arg1|
  @problem = eval("TestableClass#{arg1}").new
end

Then(/^I have its method value of (\d+) as (\d+)$/) do |arg1, arg2|
  @problem.calculate(arg1.to_i).should eq arg2.to_i
end

Then(/^I don't have its method value of (\d+) as (\d+)$/) do |arg1, arg2|
  @problem.calculate(arg1.to_i).should_not eq arg2.to_i
end