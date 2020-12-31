class MovieCommentsController < ApplicationController
    def create
      @movie_comment = MovieComment.new(movie_comment_params)
      @movie_comment.user_id = current_user.id
      if @movie_comment.save
        redirect_back(fallback_location: root_path)
      else
        redirect_back(fallback_location: root_path)
      end
    end
    private
    def comment_params
      params.require(:movie_comment).permit(:content)
    end
  end
end
