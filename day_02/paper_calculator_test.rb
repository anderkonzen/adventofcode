#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'box'
require_relative 'paper_calculator'

class PaperCalculatorTest < Minitest::Test
  def test_wrapping_paper_58
    presents = ['2x3x4']
    assert_equal(58, PaperCalculator.wrapping_paper(presents))
  end

  def test_wrapping_paper_43
    presents = ['1x1x10']
    assert_equal(43, PaperCalculator.wrapping_paper(presents))
  end

  def test_wrapping_paper_101
    presents = ['2x3x4', '1x1x10']
    assert_equal(101, PaperCalculator.wrapping_paper(presents))
  end

  def test_ribbon_34
    presents = ['2x3x4']
    assert_equal(34, PaperCalculator.ribbon(presents))
  end

  def test_ribbon_14
    presents = ['1x1x10']
    assert_equal(14, PaperCalculator.ribbon(presents))
  end

  def test_ribbon_48
    presents = ['2x3x4', '1x1x10']
    assert_equal(48, PaperCalculator.ribbon(presents))
  end
end
