class TestableClassController < ApplicationController
  def new_calculation
  end

  def calculate
    @calculation_value = params["testable"]["calculation_value"].to_i
    @problem = Object.const_get(params["testable"]["testable_class"]).new
    @result = @problem.calculate(@calculation_value)
  end
end
