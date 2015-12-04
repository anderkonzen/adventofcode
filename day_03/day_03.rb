#!/usr/bin/env ruby
require_relative 'pole_express'
require_relative 'explorer'

instructions = []
File.open('input') do |file|
  file.each_char do |char|
    instructions << char
  end
end

express = PoleExpress.new(instructions, [Explorer.new('Santa')])
express.deliver
puts "Houses that received at least one present (by Santa only): #{express.unique_houses}"

express = PoleExpress.new(instructions, [Explorer.new('Santa'), Explorer.new('Robo-Santa')])
express.deliver
puts "Houses that received at least one present (by Robo-Santa): #{express.unique_houses}"
