require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  setup do
    @reservation = FactoryGirl.create :reservation
  end

  test "valid reservation" do
    assert_equal true, @reservation.valid?
    puts @reservation.time
    puts @reservation.size
  end

  test "invalid reservation due to no time input" do
    @reservation.time = nil
    assert_equal false, @reservation.valid?
  end

  test "invalid reservation due to size" do
    @reservation.size = nil
    assert_equal false, @reservation.valid?
  end


end
