class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
 @planet = Planet.new(planet_params)
 if @planet.save
  redirect_to @planet
 else
  render :new
 end
  end



end
