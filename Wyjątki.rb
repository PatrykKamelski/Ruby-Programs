puts "Początek"
puts

class MyOwnException < StandardError; end

a = 1
b = 0

counter = 0

begin
  puts "Wynik działania: #{a/b} "
rescue ZeroDivisionError => e
  counter += 1
  puts "Nie dziel przez zero"
  retry if counter < 3
  raise e
  #raise MyOwnException.new
rescue => f #NameError
  puts " #{e.class}"
else
  puts "Nie ma błędu"
ensure
  puts "To się zawsze wykona"
end

puts
puts "Koniec"
