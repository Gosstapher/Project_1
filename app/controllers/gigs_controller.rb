class GigsController < ApplicationController
  load_and_authorize_resource
  # before_action :authenticate_user!
  def index
    @gigs = Gig.all
    if params[:search]
        @gigs = Gig.search(params[:search]).order("created_at DESC")
      else
        @gigs = Gig.all.order("created_at DESC")
      end
  end

  def new
    @gig = Gig.new
  end

  def create
    Gig.create(gig_params)
    redirect_to(gigs_path)
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def update
    @gig = Gig.find(params[:id])
    @gig.update(gig_params)
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