class Triangle
  # write code here
    attr_accessor :length_1, :length_2, :length_3
  def initialize length_1, length_2, length_3
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end 

  def kind
    if is_triangle? self.length_1, self.length_2, self.length_3
      if is_equilateral? self.length_1, self.length_2, self.length_3
        :equilateral
      elsif is_isosceles? self.length_1, self.length_2, self.length_3
        :isosceles
      else 
        :scalene
      end
    else
      raise TriangleError
    end


  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end 
  end

  private
  def is_triangle? a, b, c
    (a && b && c > 0 ) && (a + b > c) && (a + c > b) && (b + c > a)
  end

  def is_equilateral? a, b, c
    a == b && a == c
  end

  def is_isosceles? a, b, c
    a == b || a == c || b == c
  end
end
