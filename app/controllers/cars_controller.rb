class CarsController < ApplicationController

  def index
    @cars = Car.all
  end
  
  def show
    @car = Car.find(params[:id])
  end
=begin 
  def new
    @Car = Car.new
  end
=end
  def create
    @car = Car.create(
      placa: params[:placa],
      modelo: params[:modelo],
      color: params[:color]
    )
    render json: @car, status: 201
  end
end
