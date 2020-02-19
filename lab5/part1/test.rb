# frozen_string_literal: true

require 'test/unit'
require_relative 'logic'

# Unit
class MyTest < Test::Unit::TestCase
  def test_001
    assert_in_delta(-0.39783, calc(1, 2), 0.00001)
  end

  def test_002
    assert_in_delta(2.44923, calc(6, 20), 0.00001)
  end
end
