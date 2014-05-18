class TestableClass2
  attr_accessor :divisor_1
  attr_accessor :divisor_2

  def initialize(div1=3, div2=5)
    divisor_1 = div1
    divisor_2 = div2
  end

  def calculate(n)
    (0..(n-1)).to_a.select{ |i| i.modulo(divisor_1 || 3) == 0 || i.modulo(divisor_2 || 5) == 0 }.inject(:+)
  end
end