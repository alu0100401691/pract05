require './lib/racional'
require 'test/unit'

class TestRacional < Test::Unit::TestCase
  def setup
    @r1 = Racional.new(4,4)
    @r2 = Racional.new(1,1)
  end
  
  def test_simple
    assert_equal("4/4", @r1.to_s)
    assert_equal("1/1", @r2.to_s)
  end

end