require "./stack"
require "minitest"
require "minitest/autorun"

class TestStack < Minitest::Test
  def setup
    @stack = Stack.new
  end

  def test_that_returns_nil_from_empty_stack
    assert_nil @stack.pop
  end

