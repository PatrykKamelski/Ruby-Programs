=begin
[1,2,3,4,5,6]
[3,3,4,5,6]
[6,4,5,6]
[10,5,6]
[15,6]
21
=end

puts [1,2,3,4,5,6].inject { |acc, x| acc+x}
# => 21

puts [1,2,3,4,5,6].inject { |acc, x| acc*x}
# => 720

puts [1,2,3,4,5,6].inject(100) { |acc, x| acc+x}
# => 121

def dictionary
  ["kot", "zebra", "zebra", "pies", "kot", "zebra"].inject({}) do |acc, word|
    acc[word] ||= 0
    acc[word] += 1
    acc
  end
end

puts dictionary
# => {"kot"=>2, "zebra"=>3, "pies"=>1}
