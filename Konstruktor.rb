class Person

attr_accessor :greeting

  def initialize(name) # argument name, zmienna instancji @name
    puts "Konstruktor"
    @name = name
  end

end

# wywołanie metody new = wywołanie konstruktora
o1 = Person.new("Paweł") # stworzenie obiektu ze zm. inst.  @name o wartości "Paweł"
o1.greeting= "Siema"

puts o1.greeting
