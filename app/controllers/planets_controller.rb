class PlanetsController < ApplicationController
def index
  @planets = Planet.all
end

def edit
  @planet = Planet.find(params[:id])
end

def update
  @planet = Planet.find(params[:id])
  @planet.update(planet_params)
  redirect_to planet_path(@planet)
end

private

def planet_params
  params.require(:planet).permit(:name, :address, :description, :price)
end
