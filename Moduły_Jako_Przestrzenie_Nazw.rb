require 'date'

module Romance
  class Date

  end
end

module Calendar
  class Date

  end

  class Event
    def test
      puts Date # nie wychodzi z modułu Calendar, => Calendar::Date
      puts ::Date # wychodzi z modułów i szuka klasy Date => Date
      puts Romance::Date # wychodzi z modułów i szuka modułu "Romance" i klasy "Date" w podanym wcześniej module #=> Romance::Date
      puts ::Romance::Date # taki sam wynik jak u góry, bo nad Romance nie ma żadnego modułu
      puts SuperFruits::Fruits::Date #=> nad modułem Fruits jest jeszcze SuperFuits, więc trzeba go uwzględnić #=> SuperFruits::Fruits::Date
      # "::" wychodzimy ze wszystkich modułów i szukamy klasy od najwyższego poziomu
    end
  end

end

module SuperFruits
module Fruits
  class Date

  end
end

end

Calendar::Event.new.test # storzenie instancji(obiektu) danej klasy w danym module

puts Calendar::Event.new.class #=> Calendar::Event
puts Calendar::Event.new.class.superclass #=> Object
