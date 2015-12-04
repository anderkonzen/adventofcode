#!/usr/bin/env ruby
require_relative 'advent_coins'

puts "Number (5 zeros): #{AdventCoins.lowest_positive_number('bgvyzdsv', /^00000/)}"
puts "Number (6 zeros): #{AdventCoins.lowest_positive_number('bgvyzdsv', /^000000/)}"
