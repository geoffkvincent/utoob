class Api::CommentsController < ApplicationController
  before_action :set_video
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    render json: Video.comments.all
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_video
    @video = Video.find(params[:video_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :description)
  end
end
