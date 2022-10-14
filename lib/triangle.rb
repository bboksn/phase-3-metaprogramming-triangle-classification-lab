class Triangle
  # write code here
  attr_accessor :a1,:a2,:a3
 
  def initialize(a1,a2,a3)
    @a1=a1
    @a2=a2
    @a3=a3
 end
 def kind 
 valid?
 case 
 when @a1 == @a2 && @a1 == @a3
  :equilateral
 when  @a1 == @a2 || @a1 == @a3 || @a2 == @a3
  :isosceles
 when @a1 !=@a2 || @a1 !=@a3 || @a2 != @a3
  :scalene
 end

end
class TriangleError < StandardError
end


def valid? 
raise TriangleError unless (@a1==0 ||@a2==0 ||@a3 ==0) &&(@a1 + @a2 >a3 || @a2 +@a3 > @a1 || @a1 +@a3 >@a2)
end


=begin

def valid?
  begin  
  if @a1==0 ||@a2==0 ||@a3 ==0
     raise TriangleError
  else if @a1 + @a2 >a3 || @a2 +@a3 > @a1 || @a1 +@a3 >@a2
    raise TriangleError 
  end
end
rescue TriangleError => error 
  puts error.message
end
end
=end
end