class BookingsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  def index
    if can? :manage, all:
    @bookings = Booking.all
    else
    @bookings = Booking.where(user_id: current_user.id)
  end

  end

  def new
    @booking = Booking.new
    @gig = Gig.find(params[:gig_id])
  end

  def create
    # raise
    @booking = current_user.bookings.create(booking_params)
    # Booking.create(booking_params.merge(user_id: current_user.id ))
    redirect_to(bookings_path)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to(bookings_path)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to(bookings_path)
  end

  private

  def booking_params
    params.require(:booking).permit(:gig_id, :ticket)
  end
end