class BookingsController < ApplicationController
  load_and_authorize_resource
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    
    Booking.create(booking_params.merge(user_id: current_user.id ))
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
    redirect_to(booking_path)
  end

  private

  def booking_params
    params.permit(:gig_id)
  end
end