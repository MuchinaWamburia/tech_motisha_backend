require "test_helper"

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url, as: :json
    assert_response :success
  end

  test "should create video" do
    assert_difference("Video.count") do
      post videos_url, params: { video: { category: @video.category, description: @video.description, thumbnail: @video.thumbnail, title: @video.title, verification: @video.verification, video: @video.video } }, as: :json
    end

    assert_response :created
  end

  test "should show video" do
    get video_url(@video), as: :json
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { category: @video.category, description: @video.description, thumbnail: @video.thumbnail, title: @video.title, verification: @video.verification, video: @video.video } }, as: :json
    assert_response :success
  end

  test "should destroy video" do
    assert_difference("Video.count", -1) do
      delete video_url(@video), as: :json
    end

    assert_response :no_content
  end
end
