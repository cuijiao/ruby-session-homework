class Array
  def filter
  	a = Array.new
  	self.each { |x| a << x if yield x }
  	a
  end
end