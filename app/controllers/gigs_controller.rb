class GigsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
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
    # ------------ based heavily on collaboration with Andrew Insley ----- #
      if Gig.overlap_check(gig.venue_id, gig.start_time, gig.end_time).empty? 
            Gig.create(gig_params)
            redirect_to(gigs_path)
    # -------------------------------------------------------------------- #
      else
            flash[:alert] = "Venue already booked at this time"
            redirect_to(new_gig_path)
      end
  end


  def show
    @gig = Gig.find(params[:id])
    
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def update
    gig1 = Gig.find(params[:id])
        start = gig1.start_time
        finish = gig1.end_time

        gig2 = Gig.new(gig_params)

        gig1.update({start_time:nil, end_time:nil})


          if Gig.overlap_check(gig1.venue_id, gig2.start_time, gig2.end_time).empty? 
            gig1.update(gig_params)
            redirect_to(gigs_path)
          else
            gig1.update({start_time:start, end_time:finish})
            flash[:alert] = "You can not update to that time venue already booked at this time"
            redirect_to gig_path(gig_params)
          
          end
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to(gigs_path)
  end

  private

  def gig_params
    params.require(:gig).permit(:name, :image, :description, :venue_id, :artist_id, :genre_id, :bookings, :users, :start_time, :end_time, :capacity)
  end
end