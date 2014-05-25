#encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + "/../../testable.rb")
require 'capybara/cucumber'
include Capybara::DSL
Capybara.current_driver = Capybara.javascript_driver # :selenium by default

Given(/^I have testable class (\d+)$/) do |arg1|
  @problem = eval("TestableClass#{arg1}").new
end

Then(/^I have its method value of (\d+) as (\d+)$/) do |arg1, arg2|
  @problem.calculate(arg1.to_i).should eq arg2.to_i
end

Then(/^I don't have its method value of (\d+) as (\d+)$/) do |arg1, arg2|
  @problem.calculate(arg1.to_i).should_not eq arg2.to_i
end

Kad(/^es apmeklēju vietni "(.*?)"$/) do |arg1|
  visit arg1
end

Kad(/^nospiežu saiti "(.*?)"$/) do |arg1|
  click_link arg1
end

Kad(/^aizpildu lauku "(.*?)" ar "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Kad(/^nospiežu pogu "(.*?)"$/) do |arg1|
  click_button arg1
end

Tad(/^lappusei būtu jābūt saturam "(.*?)"$/) do |arg1|
  page.has_content?(arg1).should eq true
end
