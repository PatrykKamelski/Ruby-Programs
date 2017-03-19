#wartość domyślna argumentu
def greet(salutation="Hello", name)
  puts "#{salutation} #{name}!"
end

greet("Ruby")

#arguemnt nazwany domyślny
def greet(salutation:"Siema", name:, exclamation:)
  puts "#{salutation} #{name} #{exclamation}"
end

greet(name:"Patryk", exclamation:"!!")

#podczas definiowania argument nie nazwany musi być na początku
def greet(salutation, name:, exclamation:)
  puts "#{salutation} #{name} #{exclamation}"
end

greet("Witam", name:"Bartek", exclamation:"!!!")

puts

#dynamiczna liczba argumentów
def test(a, *rest)
  puts rest.class
  puts rest.inspect #zawartość rest
end

test(1)
test(1,2)
test(1,2,3,4,5)

puts

#iterowanie dynamicznych argumentów
def super_greet(name1, name2, *rest)
  puts "Hello #{name1}"
  puts "Hello #{name2}"
  rest.each do |name|
    puts "Hello #{name}"
  end
end

super_greet("Adam", "Ania", "Aron", "Bonifacy")
