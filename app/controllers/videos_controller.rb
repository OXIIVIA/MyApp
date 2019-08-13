class VideosController < ApplicationController
  before_action :set_artist, only: [:show]

  def index
    
    @videos = Video.all
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
