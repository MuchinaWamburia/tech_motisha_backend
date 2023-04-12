class VideoCommentsController < ApplicationController
  before_action :set_video_comment, only: %i[ show update destroy ]

  # GET /video_comments
  def index
    @video_comments = VideoComment.all

    render json: @video_comments
  end

  # GET /video_comments/1
  def show
    render json: @video_comment
  end

  # POST /video_comments
  def create
    @video_comment = VideoComment.new(video_comment_params)

    if @video_comment.save
      render json: @video_comment, status: :created, location: @video_comment
    else
      render json: @video_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /video_comments/1
  def update
    if @video_comment.update(video_comment_params)
      render json: @video_comment
    else
      render json: @video_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /video_comments/1
  def destroy
    @video_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_comment
      @video_comment = VideoComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_comment_params
      params.require(:video_comment).permit(:user_id, :video_id)
    end
end
