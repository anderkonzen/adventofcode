#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'directions'

class DirectionsTest < Minitest::Test
  def setup
    @dir = Directions.new('')
  end

  def test_should_stay_put
    assert_equal(0, @dir.destination_floor)
  end

  def test_should_go_up_1
    dir = Directions.new('(')
    assert_equal(1, dir.destination_floor)
  end

  def test_should_go_down_1
    dir = Directions.new(')')
    assert_equal(-1, dir.destination_floor)
  end

  def test_should_go_floor_0
    @dir.instructions = '(())'
    assert_equal(0, @dir.destination_floor)
    @dir.instructions = '()()'
    assert_equal(0, @dir.destination_floor)
  end

  def test_should_go_floor_3
    @dir.instructions = '((('
    assert_equal(3, @dir.destination_floor)
    @dir.instructions = '(()(()('
    assert_equal(3, @dir.destination_floor)
    @dir.instructions = '))((((('
    assert_equal(3, @dir.destination_floor)
  end

  def test_should_go_basement_1
    @dir.instructions = '())'
    assert_equal(-1, @dir.destination_floor)
    @dir.instructions = '))('
    assert_equal(-1, @dir.destination_floor)
  end

  def test_should_go_basement_3
    @dir.instructions = ')))'
    assert_equal(-3, @dir.destination_floor)
    @dir.instructions = ')())())'
    assert_equal(-3, @dir.destination_floor)
  end

  def test_first_basement_position
    @dir.instructions = ')'
    assert_equal(1, @dir.basement_position)
    @dir.instructions = '()())'
    assert_equal(5, @dir.basement_position)
  end
end
