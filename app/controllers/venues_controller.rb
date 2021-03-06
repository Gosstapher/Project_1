class VenuesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    Venue.create(venue_params)
    redirect_to(venues_path)
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    redirect_to(venues_path)
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to(venues_path)
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :image, :description, :location)
  end
end