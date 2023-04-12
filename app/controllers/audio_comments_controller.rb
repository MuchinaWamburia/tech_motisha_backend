class AudioCommentsController < ApplicationController
  before_action :set_audio_comment, only: %i[ show update destroy ]

  # GET /audio_comments
  def index
    @audio_comments = AudioComment.all

    render json: @audio_comments
  end

  # GET /audio_comments/1
  def show
    render json: @audio_comment
  end

  # POST /audio_comments
  def create
    @audio_comment = AudioComment.new(audio_comment_params)

    if @audio_comment.save
      render json: @audio_comment, status: :created, location: @audio_comment
    else
      render json: @audio_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /audio_comments/1
  def update
    if @audio_comment.update(audio_comment_params)
      render json: @audio_comment
    else
      render json: @audio_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /audio_comments/1
  def destroy
    @audio_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio_comment
      @audio_comment = AudioComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def audio_comment_params
      params.require(:audio_comment).permit(:user_id, :audio_id)
    end
end
