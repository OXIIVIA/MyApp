class Video < ApplicationRecord
  belongs_to :artist
  has_many :favorite_videos, dependent: :destroy
  has_many :users, through: :favorite_videos
end
