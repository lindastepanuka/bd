require File.expand_path(File.dirname(__FILE__) + "/../project_euler.rb")

#encoding: utf-8
step "I have project euler :arg1" do |arg1|
  @problem = eval("ProjectEuler#{arg1}").new
end

step "I set its divisor_:arg1 to :arg2" do |arg1, arg2|
  @problem.send("divisor_#{arg1}=",arg2.to_i)
end

step "I have its method value of :arg1 as :arg2" do |arg1, arg2|
  @problem.calculate(arg1.to_i).should eq arg2.to_i
end
