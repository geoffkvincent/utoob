class Api::VideosController < ApplicationController
  before_action :set_video, only: [:show, update, :destroy]

  def index
    render json: current_user.videos
  end

  def show
    render json: @video
  end

  def create
    video = current_user.video.new(video_params)

    if video.save
      render json: video
    else
      render json: video.errors, status 422
    end
  end

  def update
    if @video.update(video_params)
      redner json: @video
    else
      render json: @video.errors, status 422
    end
  end

  def destroy
    @video.destroy
  end

  private

  def set_video
    @video = currents_user.videos.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :category, :duration, :genre, :description, :trailer)
  end
end
