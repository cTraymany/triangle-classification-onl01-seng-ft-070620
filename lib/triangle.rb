class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    if s1 <= 0 || s2 <= 0 || s2 <= 0 || s1 + s2 < s3 || s2 + s3 < s1
      raise TriangleError
    elsif s1 == s2 && s2 == s3
      :equilateral
    elsif s2 == s3 || s1 == s3 || s1 == s2
      :isosceles
    elsif s1 != s2 && s2 != s3
      :scalene
    end
  end

  class TriangleError < StandardError
  end
  
end

# if side_1 <=0 || side_2 <=0 || side_3 <=0
