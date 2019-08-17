class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :destroy]

  def index
    @artists = Artist.order(:name)
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.new(artist_params)
    artist.save if current_user.admin_flg?
    redirect_to artists_path
  end

  def show

  end

  def edit
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params) if current_user.admin_flg?
    redirect_to artist_path(artist.id)
  end

  def destroy
    @artist.destroy if current_user.admin_flg?
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
