require 'minitest'
require 'minitest/autorun'
require_relative '../lib/vehicle'

class VehicleTest < Minitest::Test
  def setup
    @vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    @charlie = Passenger.new({name: 'Charlie', age: 18})
    @taylor = Passenger.new({name: 'Taylor', age: 12})
    @jude = Passenger.new({name: 'Jude', age: 20})
  end

  def test_existence
    assert_instance_of Vehicle, @vehicle
  end

  def test_year
    assert_equal '2001', @vehicle.year
  end

  def test_make
    assert_equal 'Honda', @vehicle.make
  end

  def test_model
    assert_equal 'Civic', @vehicle.model
  end

  def test_speeding
    assert_equal false, @vehicle.speeding?
    @vehicle.speed
    assert_equal true, @vehicle.speeding?
  end

  def test_passengers
    assert_equal [], @vehicle.passengers
    @vehicle.add_passenger(@charle)
    @vehicle.add_passenger(@taylor)
    @vehicle.add_passenger(@jude)
    assert_equal [@charle, @taylor, @jude], vehicle.passengers
  end

end
