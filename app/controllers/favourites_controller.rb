class FavouritesController < ApplicationController

  # def new
  #   @car = Car.find(params[:car_id])
  #   @favourite = Favourite.new
  # end

  def index
    @favourites = Favourite.all
  end

  def create
    @favourite = Favourite.new
    @car = Car.find(params[:car_id])
    @favourite.car = @car
    if @favourite.save
      redirect_to car_favourites_path(@favourite)
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    # redirect_to car_favourites_path(@favourite)
    redirect_to favourite_path(@favourite)
  end

  # private

  # def favourite_params
  #   params.require(:favourite).permit(:car_id)
  # end

end
