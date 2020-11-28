class Movie < ApplicationRecord
  belongs_to :user
  mount_uploader :movie_image, ImageUploader
end
