3.times do
  puts "Iteratory"
end

puts

["Seter", "Spaniel", "Owczarek"].each do |animal|
  puts animal
end

puts

["Słoń", "Tygrys", "Małpa"].each_with_index do |animal, i|
  puts "#{i}, #{animal}"
end

puts

1.upto(8) { |i| puts i}
puts
50.downto(45) {|i| puts i}
puts
0.step(20,5) {|i| puts i}
