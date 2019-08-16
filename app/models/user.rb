class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :follow_users, dependent: :destroy
  has_many :artists, through: :follow_users
  has_many :favorite_videos, dependent: :destroy
  has_many :videos, through: :favorite_videos
  has_many :favorite_articles, dependent: :destroy
  has_many :articles, through: :favorite_articles
end
