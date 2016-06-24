require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = FactoryGirl.create :user
  end

  test "valid user" do
    assert_equal true, @user.valid?
  end

  test "invalid user due to name" do
    @user.name = nil
    assert_equal false, @user.valid?

  end

  test "invalid user due to address" do
    @user.email = nil
    assert_equal false, @user.valid?

  end

  test "invalid user due to password" do
    @user.password = nil
    assert_equal false, @user.valid?

  end
end
