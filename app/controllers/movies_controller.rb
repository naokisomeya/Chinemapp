class MoviesController < ApplicationController

  def new

    @movie = Movie.new

  end


  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: "投稿に成功しました"
    else
      render :new
    end
  end

  def index
    @movies = Movie.all.order(id: "DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie.update!(movie_params)

    render :edit

  end

  def destroy
    movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movie_path
  end


  private
  def movie_params
    params.require(:movie).permit(:movie_name, :movie_body, :movie_image)
  end

end


