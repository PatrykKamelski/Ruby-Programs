class NameLength
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def >(other)
    @name.length > other.name.length
  end

  def <(other)
    @name.length < other.name.length
  end

  def ==(other)
    @name.length == other.name.length
  end

  def >=(other)
    @name.length >= other.name.length
  end

  def <=(other)
    @name.length <= other.name.length
  end

end

n1 = NameLength.new("kot")
n2 = NameLength.new("pies")

puts n1 > n2

#--------------------------------------------------------------

class NameLength2
  include Comparable # miksin, który zawiera wszystkie metody porównujące

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def <=>(other) # metoda w, której a <=> b, a jest wieksze 1, równe 0, a jest mniejsze -1
     if @name.length < other.name.length
       -1
     elsif @name.length == other.name.length
       0
     else
       1
     end
  end

  #def <=>(other)
  #  @name.length <=> other.name.length
  #end

end

p1 = NameLength2.new("abcd")
p2 = NameLength2.new("abcdef")

puts p1 > p2 #=> false
puts p1 <=> p2 #=> -1
