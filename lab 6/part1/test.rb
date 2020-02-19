# frozen_string_literal: true

require_relative 'logic.rb'
require 'test/unit'

# Unit
class MyTest < Test::Unit::TestCase
  def setup; end

  def test_1
    assert_equal 1.6181818181818182, computation(0.001)
  end

  def test_2
    assert_equal 1.6180555555555556, computation(0.0001)
  end
end
