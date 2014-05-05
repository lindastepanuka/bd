class ProjectEuler1
  attr_accessor :divisor_1
  attr_accessor :divisor_2

  def calculate(n)
    (0..(n-1)).to_a.select{ |i| i.modulo(divisor_1 || 3) == 0 || i.modulo(divisor_2 || 5) == 0 }.inject(:+)
  end

end

class ProjectEuler6
  def calculate(n)
    a = (1..n).to_a.inject(0) { |i,j| i+j*j }
    b = (1..n).to_a.inject(0) { |i,j| i+j }
    b*b-a
  end
end