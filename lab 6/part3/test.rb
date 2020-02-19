# frozen_string_literal: true

require 'test/unit'
require_relative  'logic'

# Класс Unit теста
class MyTest < Test::Unit::TestCase
  def test_1
    @res = Integral.new(1000)
    lam_1 = ->(x) { Math.exp(x) / (x + 1) }
    lam_exp = @res.intprg(0, 1, lam_1)
    assert_equal(lam_exp, @res.intprg(0, 1) { |x| Math.exp(x) / (x + 1) })
   end

  def test_2
    @res = Integral.new(1000)
    lam_1 = ->(x) { Math.exp(x) / (x + 1) }
    lam_exp = @res.intprg(0, 1, lam_1)
    assert_in_delta(lam_exp, 1.1265657101712514, 0.001)
  end

  def test_3
    @res2 = Integral.new(1000)
    lam_1 = ->(x) { x * (x - 1) }
    lam_x = @res2.intprg(0, 2, lam_1)
    assert_in_delta(0.668668, lam_x, 0.001)
     end
end
