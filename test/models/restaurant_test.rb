require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  setup do
    @restaurant = FactoryGirl.create :restaurant
  end

  test "valid restaurant" do
    assert_equal true, @restaurant.valid?
  end

  test "invalid restaurant due to name" do
    @restaurant.name = nil
    assert_equal false, @restaurant.valid?

  end

  test "invalid restaurant due to address" do
    @restaurant.address = nil
    assert_equal false, @restaurant.valid?

  end

  test "invalid restaurant due to phone" do
    @restaurant.phone = nil
    assert_equal false, @restaurant.valid?

  end

  test "invalid restaurant due to capacity" do
    @restaurant.capacity = nil
    assert_equal false, @restaurant.valid?

  end

end
