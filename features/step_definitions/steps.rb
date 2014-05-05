require File.expand_path(File.dirname(__FILE__) + "/../../project_euler.rb")

#encoding: utf-8
Given(/^I have project euler (\d+)$/) do |arg1|
  @problem = eval("ProjectEuler#{arg1}").new
end

When(/^I set its divisor_(\d+) to (\d+)$/) do |arg1, arg2|
  @problem.send("divisor_#{arg1}=",arg2.to_i)
end

Then(/^I have its method value of (\d+) as (\d+)$/) do |arg1, arg2|
  @problem.calculate(arg1.to_i).should eq arg2.to_i
end
