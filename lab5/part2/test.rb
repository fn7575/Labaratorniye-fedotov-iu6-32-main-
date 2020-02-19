# frozen_string_literal: false

require 'test/unit'
require_relative 'logic'

# Unit
class MyTest < Test::Unit::TestCase
  def test_001
    o = [(1..9)].map(&:to_a).flatten
    array = []
    5.times do
      str = (0...2).map { o[rand(o.length)] }.join

      array << str
    end
    arr = IntArray.new(array)
    arr.change_arr
    assert_not_equal array, arr.array
  end
end
