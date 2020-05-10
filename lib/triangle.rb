require 'pry'

class Triangle
  
  class TriangleError < StandardError
    def message
      "This is not a valid triangle. The sum of any two sides of a triangle always exceeds the length of the third side. Triangle inequality principle."
    end
  end
  
  attr_reader :a, :b, :c
  @@all = []
  
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
    valid_flag = nil
    if (@a> 0 && @b > 0 && @c > 0)
      valid_flag = true
    end
    if ((@a + @b) < @c && (@b + @c) < @a && (@c + @a < @b)
      valid_flag = false
    end
    valid_flag
  end
  
  def equilateral?
    :equilateral if (@a == @b && @a == @c)
  end
  
  def isosceles?
    :isosceles if ()
  end
  
  def scalene?
  end
  
  def kind
    if valid? == true
      :equilateral if (@a == @b && @a == @c)
      #equilateral || isosceles || scalene
    else valid? == false
      raise TriangleError
    end
  end
  
end
