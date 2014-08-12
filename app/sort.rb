class Person
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def <=>(other)
    @name <=> other.name
  end

  def to_s
    @name
  end
end

p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")
puts [p1, p2, p3].sort # => Guido\nLarry\nMatz