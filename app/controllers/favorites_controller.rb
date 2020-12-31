class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(movie_id: params[:movie_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorite = Favorite.find_by(movie_id: params[:movie_id], user_id: current_user.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
