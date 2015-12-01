class Directions
  attr_reader :destination_floor
  attr_reader :basement_position
  attr_reader :instructions

  def initialize(instructions)
    @instructions = instructions
    process
  end

  def instructions=(new_instructions)
    @instructions = new_instructions
    process
  end

  private

  def process
    @basement_position = 0
    @destination_floor = 0
    @instructions.chars.each_with_index do |chr, index|
      if chr == '('
        @destination_floor += 1
      elsif chr == ')'
        @destination_floor -= 1
      end
      @basement_position = (index + 1) if @destination_floor == -1 && @basement_position == 0
    end
  end
end
