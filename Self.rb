class KlasaSelf

  attr_accessor :foo

  def self.foo
    "metoda"
  end

foo = "zmienna"

puts self.foo # self odwołuje się do klasy, w której został wywołany
puts foo

end

#puts KlasaSelf.foo #=> musimy podać nazwe klasy jeżeli wywołyjemy metode, gdy jesteśmy po za klasą
