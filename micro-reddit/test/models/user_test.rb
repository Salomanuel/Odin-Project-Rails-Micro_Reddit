require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "Example User" )
	end

	test "basic user is valid" do
		assert @user.valid?
	end

	test "name shouldn't be too long" do
		@user.name = "uo"*20
		assert_not @user.valid?
	end

	test "name should be present" do
		@user.name = "    "
		assert_not @user.valid?
	end
end
