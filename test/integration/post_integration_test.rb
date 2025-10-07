require "test_helper"
class PostsIntegrationTest < ActionDispatch::IntegrationTest
  test "should create a post" do
  user = User.create!(email: "test@example.com", password: "password")
  post user_session_path, params: { user: { email: user.email, password: "password" } }

  get new_post_url
    assert_response :success

    assert_difference("Post.count") do
      post posts_url, params: { post: { title: "New Post", body: "This is the body" } }
    end

    assert_redirected_to post_url(Post.last)
  end
end
