require 'pry'
class BoundingArea

  attr_reader :areas
  def initialize(areas)
    @areas = areas

  end

  def contains_point?(x, y)
    results = []

    areas.each do |a|
      if x >= a.left && x <= a.right && y >= a.bottom && y <= a.top
        results << true
      else
        results << false
      end
    end

    results.include?(true)
  end

end
