class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @Car = Car.new
  end

  def create
    @car = Car.new(car_create_params)
      if @car.save
        redirect_to @car
      else
        render :new
      end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
      if @car.update(car_update_params)
        redirect_to cars_path
      else
        render :edit
      end
  end
  
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end
  

  private
    def car_create_params
      params.permit(:placa, :modelo, :color)
    end
    def car_update_params
      params.require(:car).permit(:placa, :modelo, :color)
    end
end
