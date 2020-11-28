class Chinema < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  mount_uploader :chinema_image, ImageUploader

end
