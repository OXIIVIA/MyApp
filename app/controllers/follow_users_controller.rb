class FollowUsersController < ApplicationController
  before_action :set_artist

  def create
    follow = current_user.follow_users.new(artist_id: @artist.id)
    follow.save
  end

  def destroy
    follow = current_user.follow_users.find_by(artist_id: @artist.id)
    follow.destroy
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
