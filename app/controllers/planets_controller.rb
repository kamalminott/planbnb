class PlanetsController < ApplicationController
  def index
    if params[:search].present? && !params[:search][:query].empty?
      @planets = Planet.search_by_name_address_and_description(params[:search][:query])
    elsif params[:search]
      @planets = Planet.all
    else
      @planets = Planet.all
    end
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
  end

  def new
    if current_user.nil?
      redirect_to new_user_session_path
      flash[:notice] = "Please Log In"
    else
      @planet = Planet.new
    end
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path, notice: "Planet was successfully destroyed."
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :address, :description, :photo, :price)
  end
end
