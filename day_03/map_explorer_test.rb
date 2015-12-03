#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'house'
require_relative 'map_explorer'

class MapExplorerTest < Minitest::Test
  def test_2_houses_one_instruction
    explorer = MapExplorer.new(['^'])
    explorer.deliver

    assert_equal(2, explorer.unique_houses)
  end

  def test_4_houses
    explorer = MapExplorer.new(['^', '>', 'v', '<'])
    explorer.deliver

    assert_equal(4, explorer.unique_houses)
  end

  def test_2_houses_some_instructions
    explorer = MapExplorer.new(['^', 'v', '^', 'v', '^', 'v', '^', 'v', '^', 'v'])
    explorer.deliver

    assert_equal(2, explorer.unique_houses)
  end
end
