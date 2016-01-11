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
    gig = Gig.new(gig_params)

        if gig.gig_overlaps?(gig.venue_id)
          gig.save
        else
          flash[:alert] = "Venue already booked at that time!"
        end
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
    if @gig.gig_overlaps?(@gig.venue_id)
      @gig.update
    else
      flash[:alert] = "Venue already booked at that time!"
    end
    
    redirect_to(gigs_path)
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to(gigs_path)
  end

  private

  def gig_params
    params.require(:gig).permit(:name, :image, :description, :venue_id, :artist_id, :genre_id, :bookings, :users, :start_time, :end_time)
  end
end