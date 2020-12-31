class ChinemaLikesController < ApplicationController
    def create
        @chinema = Chinema.find(params[:id])
        chinema_like = current_user.chinema_likes.build(chinema_id: params[:chinema_id])
      end
    
      def destroy
        @chinema = Chinema.find(params[:chinema_id])
        chinema_like = ChinemaLike.find_by(chinema_id: params[:chinema_id], user_id: current_user.id)
        like.destroy
      end
end
