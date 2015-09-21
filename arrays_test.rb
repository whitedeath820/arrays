require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end

	def test_middles
		assert_equal [1, 2], @m.middles([0, 1, 2], [1, 2, 3])
	end

	def test_max
		assert_equal 8, @m.max([1, 8, 2])
	end

	def test_lucky13?
		assert_equal true, @m.lucky13?([6, 2, 4])
		assert_equal false, @m.lucky13?([3, 1 ,3])
	end

	def test_repeat_separator
		assert_equal 'ThisAndThisAndThis', @m.repeat_separator('This', 'And', 3)
		assert_equal 'HiAndHiAndHiAndHi', @m.repeat_separator('Hi', 'And', 4)

	end
end
