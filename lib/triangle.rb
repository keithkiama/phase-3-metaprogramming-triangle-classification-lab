class Triangle
  attr_reader :triangleside1, :triangleside2, :triangleside3

  def initialize(triangleside1, triangleside2, triangleside3)
    @triangleside1 = triangleside1
    @triangleside2 = triangleside2
    @triangleside3 = triangleside3
  end

  def kind
    sumofside1 = triangleside1 + triangleside2
    sumofside2 = triangleside2 + triangleside3
    sumofside3 = triangleside3 + triangleside1

    if(triangleside1 <= 0 || triangleside2 <= 0 || triangleside3 <= 0 || sumofside3 <= triangleside2 || sumofside1 <= triangleside3 || sumofside2 <= triangleside1)
      raise TriangleError
    
    elsif (triangleside1 != 0 && triangleside1 == triangleside2 && triangleside2 == triangleside3)
      :equilateral
        
    elsif (triangleside2 == triangleside3 || triangleside1 == triangleside3 ||triangleside1 == triangleside2 )
      :isosceles

    else
      :scalene
    end

  end

  class TriangleError < StandardError
    def error
      "There are not valid sizes"
    end
  end

end
