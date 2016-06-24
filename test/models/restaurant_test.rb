require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "valid restaurant" do
    # Returns a User instance that's not saved
    restaurant = build(:restaurant)
    assert_equal true, restaurant.valid?
    puts restaurant.name
    puts restaurant.address
  end
end
