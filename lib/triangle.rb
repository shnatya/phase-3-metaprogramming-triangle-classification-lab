require "pry"
class Triangle
  # triangle code
  attr_reader :s1, :s2, :s3
  #@@triangle_types = [:equilateral, :isosceles, :scalene]

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
   #binding.pry
    if ![@s1, @s2, @s3].include?(0) && (@s1+@s2) > @s3 && (@s2+@s3) > @s1 && (@s1+@s3) > @s2
      #binding.pry
      if @s1 == @s2 && @s2 == @s3 && @s1 == @s3
        #binding.pry
        :equilateral
      elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3
        :isosceles
      else [@s1, @s2, @s3].uniq == nil
        :scalene
      end
    else 
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
