require "test_helper"

class ContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get contents_url, as: :json
    assert_response :success
  end

  test "should create content" do
    assert_difference("Content.count") do
      post contents_url, params: { content: { category_id: @content.category_id, created_at: @content.created_at, description: @content.description, thumbnail: @content.thumbnail, title: @content.title, type: @content.type, updated_at: @content.updated_at, url: @content.url, user_id: @content.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show content" do
    get content_url(@content), as: :json
    assert_response :success
  end

  test "should update content" do
    patch content_url(@content), params: { content: { category_id: @content.category_id, created_at: @content.created_at, description: @content.description, thumbnail: @content.thumbnail, title: @content.title, type: @content.type, updated_at: @content.updated_at, url: @content.url, user_id: @content.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy content" do
    assert_difference("Content.count", -1) do
      delete content_url(@content), as: :json
    end

    assert_response :no_content
  end
end
