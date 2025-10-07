require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new(body: "This is a body")
    assert_not post.save, "Saved the post without a title"
  end

  test "should create a post sucessfully" do
    post = Post.new(body: "This is a body", title: "This is a title")
    assert post.save, "Saved the post sucessfully"
  end
end
