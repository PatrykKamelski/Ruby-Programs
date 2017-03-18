puts "Użycie splat'a"
puts "Tablice"
puts a = [1,2,3,4,5]
puts "------------"
#komentarz b, c, *d = a
puts b = a.first
puts c = a[1]
puts d = a[2..4]

puts "Przedziały"
puts x = 1..10
print x.to_a
puts "------------"
print [*x]
