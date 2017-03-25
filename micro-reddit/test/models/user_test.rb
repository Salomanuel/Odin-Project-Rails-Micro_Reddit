require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "Example User")
	end

	test "basic user is valid" do
		assert @user.valid?
	end
  # test "the truth" do
  #   assert true
  # end
end
