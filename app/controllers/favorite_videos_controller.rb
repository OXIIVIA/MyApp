class FavoriteVideosController < ApplicationController
  before_action :set_video

  def create
    favorite = current_user.favorite_videos.new(video_id: @video.id)
    favorite.save
  end

  def destroy
    favorite = current_user.favorite_videos.find_by(video_id: @video.id)
    favorite.destroy
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end

end
