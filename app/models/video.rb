class Video < ApplicationRecord
  belongs_to :artist
  belongs_to :article
  has_many :favorite_videos, dependent: :destroy
  has_many :users, through: :favorite_videos
end
