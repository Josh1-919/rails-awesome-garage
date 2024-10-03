class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @favourite = Favourite.new
  end

  def new
    @car = Car.new
  end

  private
  def car_params
    params.require(:car).permit(:model,:brand,:year,:fuel)
  end
end
