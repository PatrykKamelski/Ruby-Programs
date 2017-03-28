module Addressable # używać przymiotnika w stylu: adresowalny, nazywalny itd
  attr_accessor :zip_code, :city, :street

  def full_address
    "#{street}\n#{zip_code} #{city}\nPolska"
  end

end


class Person
  include Addressable
end

class School
  include Addressable
end


p = Person.new
p.zip_code = "88-100"
p.city = "Inowrocław"
p.street = "Wojska Polskiego"

puts p.full_address
