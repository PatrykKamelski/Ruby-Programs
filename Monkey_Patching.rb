class Fixnum
  def has_one_digit?
    self.to_s.chars.uniq.size == 1 #liczbe zamieniamy na stringa, zwracamy tablice ze znakami, usuwamy duplikaty, sprawdzamy ile jest elementów w tablicy
  end

#pułapka zastosowana podczas monkey patching'u
  def *(other)
    self + (other)
    end
end

 puts 3311.has_one_digit?
 puts 2222.has_one_digit?

puts 5 + 5
puts 5 * 5
