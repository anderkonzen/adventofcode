#!/usr/bin/env ruby
require 'pry'
require_relative 'map_explorer'

instructions = []
File.open('input') do |file|
  file.each_char do |char|
    instructions << char
  end
end
binding.pry
santa = MapExplorer.new(instructions)
santa.deliver
puts "Houses that received at least one present: #{santa.unique_houses}"
