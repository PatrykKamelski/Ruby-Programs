def greet(what)
  puts "Hello #{what}"
end

greet("Patryk")

greet1 = proc {|what| puts "Hello #{what}"}

greet1.call("Damian")

# definiując proca wrzucamy do niego nie tylko kod, ale też wszystkie zmienne
# lokalne wokół, których został zdefiniowany
a = 123

test1 = lambda {puts a}

test1.call

#proc działa bez nadania wartości x
test2 = proc { |x| puts "Test2 #{x}"}

test2.call

#lambda nie działa bez nadania wartości x
test3 = lambda {|x| puts x}

test3.call(1)

puts

double = proc {|x| puts x*2}

double.call(2)
puts

puts [1,2,3,4,5].map {|x| x*2} #metoda map takes an enumerable object and a block, and runs the block for each element, outputting each returned value from the block
puts
puts [1,2,3,4,5].map(&double) #jawne przekazanie bloku do metody map dla podanej tablicy
