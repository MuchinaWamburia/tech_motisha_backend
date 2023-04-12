require "test_helper"

class VideoCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_comment = video_comments(:one)
  end

  test "should get index" do
    get video_comments_url, as: :json
    assert_response :success
  end

  test "should create video_comment" do
    assert_difference("VideoComment.count") do
      post video_comments_url, params: { video_comment: { user_id: @video_comment.user_id, video_id: @video_comment.video_id } }, as: :json
    end

    assert_response :created
  end

  test "should show video_comment" do
    get video_comment_url(@video_comment), as: :json
    assert_response :success
  end

  test "should update video_comment" do
    patch video_comment_url(@video_comment), params: { video_comment: { user_id: @video_comment.user_id, video_id: @video_comment.video_id } }, as: :json
    assert_response :success
  end

  test "should destroy video_comment" do
    assert_difference("VideoComment.count", -1) do
      delete video_comment_url(@video_comment), as: :json
    end

    assert_response :no_content
  end
end
