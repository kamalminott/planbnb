class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @planet = Planet.find(params[:planet_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: "Booking was successfully destroyed."
  end

  private

  def booking_params
    params.require(:booking).permit(:chickin, :checkout, :user_id, :planet_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
