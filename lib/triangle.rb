class Triangle
  attr_accessor :side_1, :side_2, :side_3, :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if side_1 <=0 || side_2 <=0 || side_2 <=0 side_3
      raise TriangleError
    elsif side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_2 == side_3 || side_1 == side_3 || side_1 == side_2
      :isosceles
    elsif side_1 != side_2 && side_2 != side_3
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

  class TriangleError < StandardError
    def message
      "not a triangle"
    end
  end
end

# if side_1 <=0 || side_2 <=0 || side_3 <=0
