require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name:"Example User", email: "us@exam.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "k" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.name = "k" * 250 + "@example.com"
    assert_not @user.valid?
  end
end
