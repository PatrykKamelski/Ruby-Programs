# /wyrażenie_regularne/
# http://rubular.com/

txt = "To jest 123 test (454) (2) 444 test (2312) teścik"

# Liczba w nawiasie
r = /\((\d+)\)/

puts "Czy txt pasuje do wzorca r"
puts txt =~ r
puts "Wszystkie liczby z nawiasów"
puts txt.scan(r)
