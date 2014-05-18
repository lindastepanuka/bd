class TestableClass3
  def calculate(n)
    a = (1..n).to_a.inject(0) { |i,j| i+j*j }
    b = (1..n).to_a.inject(0) { |i,j| i+j }
    b*b-a
  end
end