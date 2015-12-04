require 'pry'
require_relative 'house'

class PoleExpress
  def initialize(instructions, explorers)
    @instructions = instructions
    @explorers = explorers
    @houses = Hash.new(0)
    @houses[House.new(0, 0)] = 1 * explorers.size
  end

  def deliver
    @instructions.each_with_index do |instruction, index|
      @explorers[index % @explorers.size].run(instruction, @houses)
    end
  end

  def unique_houses
    @houses.size
  end
end
