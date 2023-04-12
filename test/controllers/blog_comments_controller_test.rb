require "test_helper"

class BlogCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_comment = blog_comments(:one)
  end

  test "should get index" do
    get blog_comments_url, as: :json
    assert_response :success
  end

  test "should create blog_comment" do
    assert_difference("BlogComment.count") do
      post blog_comments_url, params: { blog_comment: { blog_id: @blog_comment.blog_id, user_id: @blog_comment.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show blog_comment" do
    get blog_comment_url(@blog_comment), as: :json
    assert_response :success
  end

  test "should update blog_comment" do
    patch blog_comment_url(@blog_comment), params: { blog_comment: { blog_id: @blog_comment.blog_id, user_id: @blog_comment.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy blog_comment" do
    assert_difference("BlogComment.count", -1) do
      delete blog_comment_url(@blog_comment), as: :json
    end

    assert_response :no_content
  end
end
