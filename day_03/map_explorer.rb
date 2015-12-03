require 'pry'
require_relative 'house'

class MapExplorer
  def initialize(instructions)
    @instructions = instructions
    @houses = Hash.new(0)
    @houses[House.new(0, 0)] = 1
  end

  def deliver
    x, y = 0, 0
    @instructions.each do |instruction|
      case instruction
      when '^'
        y += 1
      when '>'
        x += 1
      when 'v'
        y -= 1
      when '<'
        x -= 1
      end
      house = House.new(x, y)
      @houses[house] += 1
    end
  end

  def unique_houses
    @houses.size
  end
end
