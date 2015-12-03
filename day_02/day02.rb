#!/usr/bin/env ruby
require_relative 'paper_calculator'

presents = []
File.open('input') do |file|
  file.each_line do |line|
    presents << line
  end
end

puts "Quantity of paper: #{PaperCalculator.wrapping_paper(presents)}"
puts "Quantity of ribbon: #{PaperCalculator.ribbon(presents)}"
