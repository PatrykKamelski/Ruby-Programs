class Colors
  include Enumerable

  def each(&block)
    yield "red"
    yield "green"
    yield "blue"
    yield "yellow"
  end

end

c = Colors.new

puts c.map.each {|e| e.upcase } # wybieramy wszystkie yieldy i zmieniamy na wielkie litery
puts c.map {|e| e.reverse }.inspect # nie potrzebujemy each, ponieważ zdefiniowaliśmy each dla Enumerable
puts c.select { |e| e.length.even? }.inspect # wybieramy kolory o parzystym numerze długości
