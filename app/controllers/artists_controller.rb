class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    Artist.create(artisit_params)
    redirect_to(artists_path)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artisit_params)
    redirect_to(artists_path)
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to(artists_path)
  end

  private

  def artisit_params
    params.require(:artist).permit(:name, :image, :description)
  end
end