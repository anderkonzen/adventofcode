#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'house'

class HouseTest < Minitest::Test
  def test_houses_should_be_equal
    house_1 = House.new(1, 2)
    house_2 = House.new(1, 2)
    house_3 = House.new(2, 1)

    assert_equal(house_1, house_2)
    refute_equal(house_1, house_3)
  end

  def test_house_as_key_in_hash
    house_1 = House.new(1, 2)
    house_2 = House.new(1, 2)
    house_3 = House.new(2, 1)

    h = { house_1 => 'house'}

    assert(h.key?(house_2))
    assert_equal('house', h[house_2])
    refute(h.key?(house_3))
    refute_equal('house', h[house_3])
  end
end
