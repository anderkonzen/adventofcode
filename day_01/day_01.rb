#!/usr/bin/env ruby
require_relative 'directions'

instructions = ''
File.open('input.txt') do |file|
  file.each_line do |line|
    instructions << line
  end
end

dir = Directions.new(instructions)
puts "Destination Floor: #{dir.destination_floor}" # 138
puts "Basement Position: #{dir.basement_position}"
