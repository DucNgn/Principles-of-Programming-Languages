class Shape
  attr_accessor :name

  def initialize
    @name = "Shape"
    @perimeter = 0
    @area = 0
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
    perimeter()
    area()
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
    @e = Math.sqrt(@a**2 - @b**2)
    @e
  end

  def area
    @area = Math::PI * @a* @b
    @area
  end

  def print
    puts "#@name, eccentricity: #@e, area: #@area"
  end

end

 
test = Circle.new(2)
test.print

