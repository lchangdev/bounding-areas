require_relative 'bounding_area'

class BoundingBox

  attr_reader :left, :bottom, :width, :height
  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
  end

  def right
    left + width
  end

  def top
    bottom + height
  end

  def contains_point?(x, y)
    x >= left && x <= right && y >= bottom && y <= top
  end

end
