class Person
  ["sad", "happy", "worried", "terrified"].each do |emotion|
    define_method "make_#{emotion}" do # wywołanie metody, którą podajemy w stringu
      instance_variable_set "@is_#{emotion}", true # ustawianie wartości zmiennej instancji, nazwe @ podajemy w argumencie, wartość @ podajemy po przecinku
    end

    define_method "make_#{emotion}_because" do |reason|
      send("make_#{emotion}")
      instance_variable_set "@#{emotion}_reason", reason
    end

    define_method "#{emotion}?" do
      [instance_variable_get("@is_#{emotion}") ? "Yeah" : "Nope", instance_variable_get("@#{emotion}_reason")].compact.join", "
# instance_variable_get, pobieranie wartości zmiennej instancji
    end
  end
end

#  def make_sad
#    @is_sad = true
#  end
#
#  def make_sad_because(reason)
#    make_sad # wywołanie metody
#    @sad_reason = reason
#  end
#
#  def sad?
#    [@is_sad ? "Yeah" : "Nope", @sad_reason].compact.join(", ")
#  end

p = Person.new
puts p.sad?
p.make_sad
puts p.sad?
p.make_sad_because("Java")
puts p.sad?

puts p.worried?
p.make_worried
puts p.worried?
p.make_worried_because("money")
puts p.worried?
