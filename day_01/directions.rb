class Directions
  attr_accessor :instructions

  def initialize(instructions)
    @instructions = instructions
  end

  # ( - go up
  # ) - go down
  def destination_floor
    @instructions.count('(') - @instructions.count(')')
  end

  def basement_position
    position = 0
    buffer = 0
    @instructions.each_char do |chr|
      position += 1
      chr == '(' ? buffer += 1 : buffer -= 1
      break if buffer == -1
    end
    position
  end
end
