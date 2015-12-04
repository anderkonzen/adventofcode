#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'pole_express'
require_relative 'explorer'

class PoleExpressTest < Minitest::Test
  def test_2_houses_one_instruction
    express = PoleExpress.new(['^'], [Explorer.new('explorer')])
    express.deliver

    assert_equal(2, express.unique_houses)
  end

  def test_4_houses
    express = PoleExpress.new(['^', '>', 'v', '<'], [Explorer.new('explorer')])
    express.deliver

    assert_equal(4, express.unique_houses)
  end

  def test_2_houses_some_instructions
    express = PoleExpress.new(['^', 'v', '^', 'v', '^', 'v', '^', 'v', '^', 'v'], [Explorer.new('explorer')])
    express.deliver

    assert_equal(2, express.unique_houses)
  end

  def test_3_houses_2_explorers
    express = PoleExpress.new(['^', 'v'], [Explorer.new('explorer'), Explorer.new('robot')])
    express.deliver

    assert_equal(3, express.unique_houses)
  end

  def test_3_houses_2_explorers_more_instructions
    express = PoleExpress.new(['^', '>', 'v', '<'], [Explorer.new('explorer'), Explorer.new('robot')])
    express.deliver

    assert_equal(3, express.unique_houses)
  end

  def test_11_houses_2_explorers
    express = PoleExpress.new(['^', 'v', '^', 'v', '^', 'v', '^', 'v', '^', 'v'], [Explorer.new('explorer'), Explorer.new('robot')])
    express.deliver

    assert_equal(11, express.unique_houses)
  end
end
