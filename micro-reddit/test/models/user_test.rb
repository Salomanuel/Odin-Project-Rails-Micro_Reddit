require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name:"Example User", password:"tortora")
	end

	test "it should work, dammit" do
		assert @user.valid?
	end

	test "it should have a name" do
		@user.name = nil
		assert_not @user.valid?
	end

	test "the name shouldn't be too long" do
		@user.name = "a" * 30
		assert_not @user.valid?
	end

	test "it should have a password" do
		@user.password = nil
		assert_not @user.valid?
	end

	test "password shouldn't be too long" do
		@user.password = "a" * 30
		assert_not @user.valid?
	end
end
