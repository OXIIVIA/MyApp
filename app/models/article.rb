class Article < ApplicationRecord
  belongs_to :artist
  has_many :favorite_articles, dependent: :destroy
  has_many :users, through: :favorite_articles
  has_many :apple_musics, dependent: :destroy
  has_many :soundclouds, dependent: :destroy
end
