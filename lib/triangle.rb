require 'pry'

class Triangle
  
  class TriangleError < StandardError
    def message
      "This is not a valid triangle. The sum of any two sides of a triangle always exceeds the length of the third side. Triangle inequality principle."
    end
  end
  
  attr_reader :a, :b, :c
  @@all = []
  @atrs = [@side_a, @side_b, @side_c]
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def kind
    
  end
  
end
