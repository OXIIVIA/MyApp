class VideosController < ApplicationController
  before_action :set_artist, only: [:show]

  def index
    @videos = Video.order("id DESC").limit(8)
    last_video_id = params[:id]
    @next = Video.where("id < #{last_video_id}", params[:id])
    respond_to do |format|
      format.html
      format.json 
    end
  end

  def show
    @video = Video.find(params[:id])
    @videos = @artist.videos.where.not(id: @video.id)
  end


  private

  def set_artist
    @artist = Video.find(params[:id]).artist
  end
end
