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
end
