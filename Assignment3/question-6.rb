require './question-5.rb'

Statistics = {:Shapes => Shape.getCtr, :Rectangles => Rectangle.getCtr, :Circles => Circle.getCtr, :Ellipses => Ellipse.getCtr}

puts "\nStatistics: "
puts "  Shape(s): " + Statistics[:Shapes].to_s
puts "  Rectangle(s): " + Statistics[:Rectangles].to_s
puts "  Circle(s): " + Statistics[:Circles].to_s
puts "  Ellipse(s): " + Statistics[:Ellipses].to_s
