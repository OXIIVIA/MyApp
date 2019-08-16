class Article < ApplicationRecord
  belongs_to :artist
  has_many :favorite_articles, dependent: :destroy
  has_many :users, through: :favorite_articles
end
