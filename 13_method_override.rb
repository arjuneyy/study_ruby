class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    # Override to_s method
    "(#@x, #@y)"
  end

  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end
end

p1 = Point.new(1, 1)
p2 = Point.new(2, 2)

puts p1 + p2