class Chinema < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :chinema_likes
  has_many :chinema_liked_users, through: :chinema_likes, source: :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode
  mount_uploader :chinema_image, ImageUploader



end
