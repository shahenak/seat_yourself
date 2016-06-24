require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  setup do
    @restaurant = FactoryGirl.create :restaurant
  end

  test "valid restaurant" do
    assert_equal true, @restaurant.valid?
  end
end
