def greet

  puts "Jak masz na imię?"
  name = gets.chomp
  puts "Ile masz lat?"
  age = gets.chomp.to_i

  year_current = Time.new

  year_birthday = year_current.year - age

  puts "#{name} urodziłeś się w #{year_birthday} roku!"

end

greet
