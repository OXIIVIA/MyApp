class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :follow_users, dependent: :destroy
  has_many :artists, through: :follow_users
end
