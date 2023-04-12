require "test_helper"

class AudioCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audio_comment = audio_comments(:one)
  end

  test "should get index" do
    get audio_comments_url, as: :json
    assert_response :success
  end

  test "should create audio_comment" do
    assert_difference("AudioComment.count") do
      post audio_comments_url, params: { audio_comment: { audio_id: @audio_comment.audio_id, user_id: @audio_comment.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show audio_comment" do
    get audio_comment_url(@audio_comment), as: :json
    assert_response :success
  end

  test "should update audio_comment" do
    patch audio_comment_url(@audio_comment), params: { audio_comment: { audio_id: @audio_comment.audio_id, user_id: @audio_comment.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy audio_comment" do
    assert_difference("AudioComment.count", -1) do
      delete audio_comment_url(@audio_comment), as: :json
    end

    assert_response :no_content
  end
end
