2.times {puts "Hello"}

puts

def twice
  if block_given?
    yield
    yield
  else
    puts "Brak bloku!"
  end
end

twice
twice {puts "Hello"}

puts

3.times { |x| puts x}

puts

def counter(c)
  while c > 0
    yield(c)
    c -= 1
  end
end

counter(3) { |x |puts "count #{x}"}
