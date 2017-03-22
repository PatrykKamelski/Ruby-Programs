class Person

  def greet
    puts greeting
  end

  def greeting
    puts "Hello! #{object_id}"
  end

  def adding (x,y)
    a = x + y
    puts  "#{x} + #{y} = #{a}"
  end

  def subtract (x,y)
    b = x - y
    puts "#{x} - #{y} = #{b}"
  end
end

o1 = Person.new
o2 = Person.new

o1.greet
o2.greeting
o2.adding(5,5)
o1.subtract(5,5)
