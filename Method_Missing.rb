class Entry
  def self.find(conditions = {})
    puts "Szukam : #{conditions.inspect}"
  end

  def self.method_missing(method, *arguments, &block)
    match = method.to_s.match /^find_by_(.*)$/
    if match
      find(match[1] => arguments.first)
    else
      super# 
    end
  end
end

Entry.find(name: "Test")
Entry.find_by_name("Test")
Entry.find_by_last_name("Ruby")
Entry.find_by_age(3333)
Entry.find_ttttt
