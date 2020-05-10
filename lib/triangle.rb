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
  
  def valid?
    valid_flag = false
    valid_flag = true if @atrs.none?{|atr| atr <= 0}
    valid_flag
  end
  
  def equilateral
    :equilateral if (@a == @b && @a == @c)
  end
  
  def isosceles
    :isosceles if ()
  end
  
  def scalene
  end
  
  def kind
    if valid? == true
      
      
    else valid? == false
      raise TriangleError
    end
  end
  
end
