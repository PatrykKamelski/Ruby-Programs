x = -5

if x == 1
  puts "X jest jedynką"
else
  puts "X nie jest jedynką"
end

value = case x
when 1
  "x jest jedynką"
when 10..19
  "x jest z przedziału 10..19"
else
  "do x jest przypisyna inna wartość"
end

puts value

a = []
y = 0
loop do
  y +=1
  if y.even?
    a << y
    next
  end

if y > 10
  break
end

#a << y

puts
print a
end

puts

z = 0
while z < 5
  z += 1
  puts "Hello"
end

#until (text = gets.chomp) == "exit"
