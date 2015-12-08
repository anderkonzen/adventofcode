#!/usr/bin/env ruby
require_relative 'nice_strings'

words = []
nice_words = 0
File.open('input') do |file|
  file.each_line do |line|
    nice_words += 1 if line.nice?
  end
end

puts "Nice words: #{nice_words}"
