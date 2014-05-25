require File.expand_path(File.dirname(__FILE__) + "/../testable.rb")

#encoding: utf-8
step "I have testable class :arg1" do |arg1|
  @problem = eval("TestableClass#{arg1}").new
end

step "I have its method value of :arg1 as :arg2" do |arg1, arg2|
  @problem.calculate(arg1.to_i).should eq arg2.to_i
end

step "I don't have its method value of :arg1 as :arg2" do |arg1, arg2|
  @problem.calculate(arg1.to_i).should_not eq arg2.to_i
end