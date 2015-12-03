#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'box'

class BoxTest < Minitest::Test
  def test_surface_area_52
    box = Box.new(2, 3, 4)
    assert_equal(52, box.surface_area)
  end

  def test_surface_area_42
    box = Box.new(1, 1, 10)
    assert_equal(42, box.surface_area)
  end

  def test_smallest_side_area_6
    box = Box.new(2, 3, 4)
    assert_equal(6, box.smallest_side_area)
  end

  def test_smallest_side_area_1
    box = Box.new(1, 1, 10)
    assert_equal(1, box.smallest_side_area)
  end

  def test_smallest_perimeter_10
    box = Box.new(2, 3, 4)
    assert_equal(10, box.smallest_perimeter)
  end

  def test_smallest_perimeter_4
    box = Box.new(1, 1, 10)
    assert_equal(4, box.smallest_perimeter)
  end

  def test_volume_24
    box = Box.new(2, 3, 4)
    assert_equal(24, box.volume)
  end

  def test_volume_10
    box = Box.new(1, 1, 10)
    assert_equal(10, box.volume)
  end
end
