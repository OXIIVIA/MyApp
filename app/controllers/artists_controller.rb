class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  end

  def edit
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params) if user_signed_in?
    redirect_to artist_path(artist.id)
  end

  def destroy
    @artist.destroy if user_signed_in?
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image, :text)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
