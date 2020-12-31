class Movie < ApplicationRecord
  belongs_to :user
  mount_uploader :movie_image, ImageUploader

  has_many :favorites
  has_many :favorited_users, through: :favorites, source: :user
  has_many :movie_comments
  
end
