class FavouritesController < ApplicationController
  def index
    @favourite = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[':id'])
    @favourite.destroy
    redirect_to favourite_path, status: see_other
  end

end