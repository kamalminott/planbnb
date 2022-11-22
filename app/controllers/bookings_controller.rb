class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @planet = Planet.find(params[:id])
    @booking = Booking.new
    # @booking.user_id = current_user.id
    # @booking.planet_id = @planet.id
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.planet = Planet.find(params[:booking][:planet])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
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
    params.require(:booking).permit(:checkin, :checkout)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
