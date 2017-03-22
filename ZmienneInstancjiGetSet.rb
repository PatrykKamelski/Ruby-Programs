class Person

### NORMAL STYLE ###
  def greet
    puts @greeting #@greeting - atrybut klasy
  end

  def set_greeting(new_greeting)
    @greeting = new_greeting
  end

  def get_greeting
    @greeting
  end

### RUBY STYLE ###

def greet2
  puts @greeting2
end

def greeting= (new_greeting)
  @greeting2 = new_greeting
end

def greeting2
  @greeting2
end

### PROFFESIONAL RUBY STYLE ###
attr_accessor :greeting3 # defiiniuje set i get
# attr_reader :greeting3 odczytanie atrybutu, bez możliwości zapisu
# attr_writer :greeting3 zapisywanie do danej zmiennej, bez możliwości odczytu

def greet3
  puts @greeting3
end

end
###

# NORMAL
o1 = Person.new
o1.set_greeting("Hello") #stworzenie zmiennej instancji dla obiektu o2

puts o1.get_greeting

#RUBY
o2 = Person.new
o2.greeting= "Cześć"

puts o2.greeting2

#PROFFESIONAL RUBY
o3 = Person.new
o3.greeting3= "Siema"

puts o3.greeting3
