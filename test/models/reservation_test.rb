require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  setup do
    @reservation = FactoryGirl.create :reservation
  end

  test "valid restaurant" do
    assert_equal true, @reservation.valid?
    puts @reservation.time
    puts @reservation.size
  end
end
