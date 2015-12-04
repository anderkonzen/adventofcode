class Explorer
  attr_reader :name

  def initialize(name)
    @name = name
    @x, @y = 0, 0
  end

  def run(instruction, houses)
    case instruction
    when '^'
      @y += 1
    when '>'
      @x += 1
    when 'v'
      @y -= 1
    when '<'
      @x -= 1
    end
    house = House.new(@x, @y)
    houses[house] += 1
  end
end
