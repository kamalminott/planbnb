class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to planets_path, notice: "Planet was successfully destroyed."
  end
end
