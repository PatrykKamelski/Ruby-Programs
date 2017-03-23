class Person

attr_accessor :greeting

  def greet
    puts @greeting
  end

  def move
    "poruszam się"
  end
end

class LoudPerson < Person

  def greet
    puts @greeting.upcase
  end

  def move
    super + " bardzo głośno" #super wykonuje nadrzędną metodę, plus to co dodamy w metodzie podrzędnej
  end

end

o1 = Person.new

o1.greeting= "Siema"
o1.greet

o2 = LoudPerson.new

o2.greeting= "Siema"
o2.greet

puts o2.move

# hierarchia klas
puts

puts LoudPerson #=> LoudPerson
puts LoudPerson.superclass #=> Person
puts LoudPerson.superclass.superclass #=> Object
puts LoudPerson.superclass.superclass.superclass #=> BasicObject
