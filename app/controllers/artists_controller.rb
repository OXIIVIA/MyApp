class ArtistsController < ApplicationController
  before_action :set_artist, only: :show

  def index
    @artists = Artist.order(:name)
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
