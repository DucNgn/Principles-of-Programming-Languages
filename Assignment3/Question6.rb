
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


a = []
File.open("Information.txt").each {|line| a.push(line)}
Statistics = {:Shapes => 0, :Rectangles => 0, :Circles => 0, :Ellipses => 0}

for element in a
    info = element.split
    if info[0] == "rectangle" 
        if info.length == 3 and info[1].to_i >=0 and info[2].to_i >=0
            r = Rectangle.new(info[1].to_i,info[2].to_i)
            Statistics[:Rectangles] = Statistics[:Rectangles] + 1
            Statistics[:Shapes] = Statistics[:Shapes] + 1
            r.print()
        else 
            puts "Invalid Rectangle"
        end


elsif info[0] == "circle" 
    if info.length == 2 and info[1].to_i >=0
        c = Circle.new(info[1].to_i)
        Statistics[:Circles] = Statistics[:Circles] + 1
        Statistics[:Shapes] = Statistics[:Shapes] + 1
        c.print()
    else 
        puts "Invalid Circle"
    end


elsif info[0] == "ellipse" 
    if info.length == 3 and info[1].to_i >=0 and info[2].to_i >=0 and info[2].to_i >= info[1].to_i
        e = Ellipse.new(info[2].to_i,info[1].to_i)
        Statistics[:Ellipses] = Statistics[:Ellipses] + 1
        Statistics[:Shapes] = Statistics[:Shapes] + 1
        e.print()
    else 
        puts "Invalid Ellipse"
    end


elsif info[0] == "shape" 
    if info.length == 1
        s = Shape.new()
        Statistics[:Shapes] = Statistics[:Shapes] + 1
        s.print()
    else 
        puts "Invalid Shape"
    end
end

end 

puts "\nStatistics: "
puts "  Shape(s): " + Statistics[:Shapes].to_s
puts "  Rectangle(s): " + Statistics[:Rectangles].to_s
puts "  Circle(s): " + Statistics[:Circles].to_s
puts "  Ellipse(s): " + Statistics[:Ellipses].to_s
