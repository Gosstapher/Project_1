class GenresController < ApplicationController
  load_and_authorize_resource
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    Genre.create(genre_params)
    redirect_to(genres_path)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to(genres_path)
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to(genres_path)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end