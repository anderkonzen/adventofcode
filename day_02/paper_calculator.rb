require_relative 'box'

class PaperCalculator
  def self.wrapping_paper(presents_dimensions)
    presents_dimensions.reduce(0) do |sum, dimensions|
      dim = dimensions.split('x')
      present = Box.new(dim[0].to_i, dim[1].to_i, dim[2].to_i)
      sum + present.surface_area + present.smallest_side_area
    end
  end

  def self.ribbon(presents_dimensions)
    presents_dimensions.reduce(0) do |sum, dimensions|
      dim = dimensions.split('x')
      present = Box.new(dim[0].to_i, dim[1].to_i, dim[2].to_i)
      sum + present.smallest_perimeter + present.volume
    end
  end
end
