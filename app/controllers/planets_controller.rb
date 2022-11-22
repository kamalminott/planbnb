class PlanetsController < ApplicationController
  before_action :authenticate_user!, only: :index
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
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
