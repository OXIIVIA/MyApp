class Artist < ApplicationRecord
  has_many :follow_users, dependent: :destroy
  has_many :users, through: :follow_users
  has_many :videos
end
