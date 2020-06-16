class Shape
  attr_accessor :name

  def initialize
    @name = "Shape"
    @perimeter = "undefined"
    @area = "undefined"
  end 

  def print
    puts "#@name, perimeter: #@perimeter, area: #@area"
  end

  def perimeter
    nil
  end

  def area
    nil
  end

end

class Circle < Shape
  def initialize(radius)
    super()
    @name = "Circle"
    @r = radius
    perimeter()
    area()
  end

  def perimeter
    @perimeter = 2 * Math::PI * @r
    @perimeter
  end

  def area
    @area = Math::PI * (@r**2)
    @area
  end
end


class Rectangle < Shape
  def initialize(height, width)
    super()
    @name = "Rectangle"
    @height = height
    @width = width
    if(height == 0 || width == 0) 
      @perimeter = 0
      @area = 0
    else
      perimeter()
      area()
    end
  end

  def perimeter
    @perimeter = (@height + @width) * 2
    @perimeter
  end

  def area
    @area = @height * @width
    @area
  end
end

class Ellipse < Shape
  attr_accessor :e
  def initialize(a, b)
    super()
    @name = "Ellipse"
    @a = a
    @b = b
    eccentricity()
    area()
  end

  def eccentricity
    @e = Math.sqrt((@a**2 - @b**2).abs)
    @e
  end

  def area
    @area = Math::PI * @a* @b
    @area
  end

end
