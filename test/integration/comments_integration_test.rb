require "test_helper"

class CommentsIntegrationTest < ActionDispatch::IntegrationTest
  test "should create a comment on a post" do
    # Criar post e usuário
    post_record = Post.create!(title: "Post for comment", body: "Body")
    user = User.create!(email: "commenter@example.com", password: "password")

    # Fazer login
    post user_session_path, params: { user: { email: user.email, password: "password" } }

    # Acessar new comment page
    get new_post_comment_url(post_record)
    assert_response :success

    # Criar comment
    assert_difference("Comment.count", 1) do
      post post_comments_url(post_record), params: { comment: { content: "Nice post" } }
    end

    assert_redirected_to post_url(post_record)
  end
end
