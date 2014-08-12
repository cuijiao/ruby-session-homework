class VowelFinder
  include Enumerable
  attr_reader :str
  def initialize str
    @str = str
  end

  def each
    @str.each_char do |char|
      yield char if ['a','o','e','i','u'].include? char
    end
  end
end


finder = VowelFinder.new("the quick brown fox jumped")
p finder.inject(:+) # => "euiooue"