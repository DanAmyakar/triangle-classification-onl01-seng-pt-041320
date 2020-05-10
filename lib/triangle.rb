require 'pry'

class Triangle
  
  attr_reader :a, :b, :c
  @@all = []
  @atrs = [@side_a, @side_b, @side_c]
  
  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def valid?
    valid_flag = false if atrs.any? <= 0
    valid_flag = true if (@atrs[0] + @atrs[1]) > @atrs[2]
    valid_flag = true if (@atrs[0] + @atrs[2]) > @atrs[1]
    valid_flag = true if (@atrs[1] + @atrs[2]) > @atrs[0]
    if valid_flag == false
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end
  
  def equilateral
    :equilateral if ( @side_a == @side_b && @side_a == @side_c)
  end
  
  def isosceles
    :isosceles if (@side_a == @side_b || @side_a == @side_c || @side_b == @side_c)
  end
  
  def scalene
    group.collect.sort {|a, b| a <=> b}
    :scalene if (group[0] > group[1] && group[0] != group[1] && group[1] != group[2]) 
  end
  
  def kind
    valid?
    equilateral || isosceles || scalene
  end
  
  
  
  class TriangleError < StandardError
    def message
      "This is not a valid triangle. The sum of any two sides of a triangle always exceeds the length of the third side. Triangle inequality principle."
    end
  end
  
end
