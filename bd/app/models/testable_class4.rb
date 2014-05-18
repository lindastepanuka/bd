# calculate fibonacci number
class TestableClass4
  def calculate(n)
    return n if (0..1).include? n
    calculate(n-1) + calculate(n-2) if n > 1
  end
end