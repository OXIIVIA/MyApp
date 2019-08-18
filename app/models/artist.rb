class Artist < ApplicationRecord
  has_many :follow_users, dependent: :destroy
  has_many :users, through: :follow_users
  has_many :videos, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :apple_musics, dependent: :destroy
end
