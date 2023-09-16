require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Exampple User", email: "user@example.com")
  end

  test "should be valid" do 
    assert @user.valid?
  end

  test "name should be present" do
    @user.name=(" ")
    assert_not @user.valid? # 失敗しているべきである
  end

  test "email should be present" do
    @user.email=(" ")
    assert_not @user.valid? # 失敗しているべきである
  end

  test "name should not be too long" do
    @user.name=("a" * 51)
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email=("a" * 244 + "@example.com") # 256
    assert_not @user.valid?
  end

  test "email validation should accept valid adresses" do
    valid_addresses = %w(user@example.com USER@foo.COM A_US-ER@foo.bar.org first.latest@foo.jp foo+bar@gmail.com)
    valid_addresses.each do |valid_addresses|
      @user.email = valid_addresses
      assert @user.valid?, "#{valid_addresses.inspect} should be valid"    
    end
  end

  test "email validation should reject invalid adresses" do
    invalid_addresses = %w(user@example,com USER_foo.COM A_US-ER@foo.bar. first.latest@foo_test.jp foo/bar@gmail.com)
    invalid_addresses.each do |invalid_addresses|
      @user.email = invalid_addresses
      assert_not @user.valid?, "#{invalid_addresses.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
end
