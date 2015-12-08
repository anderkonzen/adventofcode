#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'nice_strings'

class NiceStringsTest < Minitest::Test
  def test_nice_strings
    assert('ugknbfddgicrmopn'.nice?)
    assert('aaa'.nice?)
  end

  def test_naughty_strings
    assert('jchzalrnumimnmhp'.naughty?)
    assert('haegwjzuvuyypxyu'.naughty?)
    assert('dvszwmarrgswjxmb'.naughty?)
  end
end
