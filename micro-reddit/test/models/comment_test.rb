require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	def setup
		@comment = Comment.new(	body:"hai dettop una cazzata",
														user_id:1,
														post_id:1)
	end

	test "it should work, dammit" do
		assert @comment.valid?
	end

	test "it should have an owner" do
		@comment.user_id = nil
		assert_not @comment.valid?
	end

	test "it should have a post" do
		@comment.post_id = nil
		assert_not @comment.valid?
	end

	test "it should have a body" do
		@comment.body = nil
		assert_not @comment.valid?
	end

	test "comment shouldn't be too long" do
		@comment.body = "culo"*50
		assert_not @comment.valid?
	end
end
