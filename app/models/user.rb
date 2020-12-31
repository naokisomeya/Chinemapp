class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable 

  mount_uploader :profile_image, ImageUploader

  has_many :movies, dependent: :destroy
  has_many :chinemas, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_chinemas, through: :likes, source: :chinemas
  has_many :favorites, dependent: :destroy
  has_many :favorited, through: :favorites, source: :movie
  has_many :movie_comments
  has_many :comments

  def already_liked?(chinema)
    self.likes.exists?(chinema_id: chinema.id)
  end

  def already_favorited?(movie)
    self.favorites.exists?(movie_id: movie.id)
  end
end
