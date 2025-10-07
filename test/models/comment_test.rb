require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without content" do
    post = Post.create!(title: "T", body: "B")
    comment = Comment.new(post: post)
    assert_not comment.save, "Saved the comment without content"
  end

  test "should save comment with content and post" do
    post = Post.create!(title: "T2", body: "B2")
    comment = Comment.new(post: post)
    comment.content = "This is a comment"
    assert comment.save, "Failed to save a valid comment"
  end
end
