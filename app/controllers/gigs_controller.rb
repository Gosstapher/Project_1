class GigsController < ApplicationController
  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
    @venues = Venue.all
    @artists = Artist.all
    @genre = Genre.all
  end

  def create
    Gig.create(gig_params)
    redirect_to(gigs_path)
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def edit
    @gig = Gig.new
    @venues = Venue.all
    @artists = Artist.all
    @genre = Genre.all
  end

  def update
    Gig.update(gig_params)
    redirect_to(gigs_path)
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to(gigs_path)
  end

  private

  def gig_params
    params.require(:gig).permit(:name, :image, :description, :venue_id, :artist_id, :genre_id, :bookings, :users)
  end
end