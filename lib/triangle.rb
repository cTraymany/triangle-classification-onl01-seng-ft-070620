class Triangle
  attr_accessor :s1, :s2, :s3, :equilateral, :isosceles, :scalene

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  class TriangleError < StandardError
  end

  def kind
    if s1 <= 0 || s2 <= 0 || s2 <= 0
      raise TriangleError
    elsif s1 == s2 && s2 == s3
      :equilateral
    elsif s2 == s3 || s1 == s3 || s1 == s2
      :isosceles
    elsif s1 != s2 && s2 != s3
      :scalene
    end
  end
  

  # def kind
  #   if side_1 > 0 && side_1 == side_2 && side_2 == side_3
  #     :equilateral
  #   elsif side_1 > 0 && side_1 == side_2 || side_1 == side_3 || side_2 == side_3
  #     :isosceles
  #   elsif side_1 > 0 && side_1 != side_2 && side_2 != side_3 && side_1 != side_3
  #     :scalene
  #   else
  #     begin
  #       raise TriangleError
  #     rescue TriangleError => error
  #       puts error.message
  #     end
  #   end
  # end

  
end

# if side_1 <=0 || side_2 <=0 || side_3 <=0
