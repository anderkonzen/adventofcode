class Box
  attr_reader :length
  attr_reader :width
  attr_reader :height

  def initialize(l, w, h)
    @length = l
    @width = w
    @height = h
  end

  def surface_area
    2 * @length * @width + 2 * @width * @height + 2 * @height * @length
  end

  def smallest_side_area
    [@length, @width, @height].sort.first(2).reduce(:*)
  end

  def smallest_perimeter
    [@length, @width, @height].sort.first(2).reduce(0) { |sum, side| sum + (side * 2) }
  end

  def volume
    @length * @width * @height
  end
end
