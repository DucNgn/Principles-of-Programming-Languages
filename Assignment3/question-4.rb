class Shape
  attr_accessor :name
  @@shape_count = 0

  def initialize
    @@shape_count += 1
    @name = "Shape"
    @perimeter = "undefined"
    @area = "undefined"
  end 

  def print
    puts "#@name, perimeter: #@perimeter, area: #@area"
  end

  def self.getCtr
    @@shape_count 
  end

  def perimeter
    nil
  end

  def area
    nil
  end

end

class Circle < Shape
  @@circle_count = 0

  def initialize(radius)
    super()
    @@circle_count += 1
    @name = "Circle"
    @r = radius
    perimeter()
    area()
  end

  def self.getCtr
    @@circle_count
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
  @@rectangle_count = 0
  def initialize(height, width)
    super()
    @@rectangle_count += 1
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

  def self.getCtr
    @@rectangle_count
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
  @@ellipse_count = 0
  attr_accessor :e
  def initialize(a, b)
    super()
    @@ellipse_count += 1
    @name = "Ellipse"
    @a = a
    @b = b
    eccentricity()
    area()
  end

  def self.getCtr
    @@ellipse_count
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
