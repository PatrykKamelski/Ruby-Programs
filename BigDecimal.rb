require "bigdecimal"
x = BigDecimal.new("1.0")
10000.times { x += BigDecimal.new("0.0001") }
puts x.to_f
