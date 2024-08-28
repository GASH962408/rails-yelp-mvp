class RestaurantsController < ApplicationController
  def index
    #+OJO Restaurant viene del modelo restaurant.rb al generarlo
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    #+ .save guarda en la base de datos de lo contrario quedaria colgando
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    #?Comunicacion con el formulario
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
