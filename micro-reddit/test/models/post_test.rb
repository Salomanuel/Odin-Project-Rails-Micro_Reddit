require 'test_helper'

class PostTest < ActiveSupport::TestCase
	def setup 
		@post = Post.new(user:1, title:"title1", body:"body1")
	end

	test "it should work normally" do
		assert @post.valid?
	end

	test "it should have an owner" do
		@post.user = nil
		assert_not @post.valid?
	end

	test "it should have a title" do
		@post.title = nil
		assert_not @post.valid?
	end

	test "title shouldn't be too long" do
		@post.title = "1"*30
		assert_not @post.valid?
	end

	test "post should have a body" do
		@post.body = nil
		assert_not @post.valid?
	end

	test "post should not be too long" do
		@post.body = "a"*1000
		assert_not @post.valid?
	end
end
