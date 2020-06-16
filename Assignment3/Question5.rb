a = []
File.open("Information.txt").each {|line| a.push(line)}

for element in a
  info = element.split

  if info[0] == "rectangle" 
    if info.length == 3 and info[1].to_i >=0 and info[2].to_i >=0
      r = Rectangle.new(info[1].to_i,info[2].to_i)
      r.print()
    else 
      puts "Invalid Rectangle"
    end
  

  elsif info[0] == "circle" 
    if info.length == 2 and info[1].to_i >=0
      c = Circle.new(info[1].to_i)
      c.print()
    else 
      puts "Invalid Circle"
    end
  

  elsif info[0] == "ellipse" 
    if info.length == 3 and info[1].to_i >=0 and info[2].to_i >=0 and info[2].to_i >= info[1].to_i
      e = Ellipse.new(info[2].to_i,info[1].to_i)
      e.print()
    else 
      puts "Invalid Ellipse"
    end
  

  elsif info[0] == "shape" 
    if info.length == 1
      s = Shape.new()
      s.print()
    else 
      puts "Invalid Shape"
    end
  end

end
