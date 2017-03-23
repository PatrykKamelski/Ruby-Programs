class Person

  @@population = 0 # zmienna klasy

  attr_accessor :greeting

  def initialize(name)
    @name = name
    @@population += 1
  end

  def greet
    puts @greeting
  end

  def pop
    @@population
  end

  def self.population #metoda klasy, self to słowo kluczowe, które reprezentuje obiekt(klasa Person), na rzecz którego wywołano daną metodę.
    @@population
  end
end

p1 = Person.new("Patryk")
p1.greeting= "Cześć"

puts p1.pop
puts Person.population
