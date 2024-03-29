class CommentsController < ApplicationController

  # GET /comments
  def index
     comments = Comment.all

    render json:  comments
  end

  # GET /comments/1
  def show
    comment= Comment.find(params[:id])
    render json:  comment
  end

  # POST /comments=  {"comment":{"content_id": 1,"user_id": 3,"comment": "I'm glad","parent_id":null}}
  def create
     comment = Comment.new(comment_params)

    if  comment.save
      render json:  comment, status: :created, location:  comment
    else
      render json:  comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    comment=Comment.find(params[:id])
    if  comment.update(comment_params)
      render json:  comment
    else
      render json:  comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    comment=Comment.find(params[:id]).
     comment.destroy
     head :no_content
  end

  private
# Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:content_id, :user_id, :comment, :parent_id, :created_at, :updated_at)
  end
end
