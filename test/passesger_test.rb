require 'minitest'
require 'minitest/autorun'
require_relative '../lib/passenger'

class PassengerTest < MiniTest::Test
  def setup
    @charlie = Passenger.new({name: 'Charlie', age: 18})
    @taylor = Passenger.new({name: 'Taylor', age: 12})
  end

  def test_existence
    assert_instance_of Passenger, @charlie
  end

  def test_name
    assert_equal 'Charlie', @charlie.name
    assert_equal 'Taylor', @taylor.name
  end

  def test_age
    assert_equal 18, @charlie.age
    assert_equal 12, @taylor.age
  end

  def test_adult
    assert_equal true, @charlie.adult?
    assert_equal false, @taylor.adult?
  end

  def test_driver
    assert_equal false, @charlie.driver?
    assert_equal false, @taylor.driver?
  end

  def test_change_driver
    @charlie.drive
    assert_equal true, @charlie.driver?
  end
end
