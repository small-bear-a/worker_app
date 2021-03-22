class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
     @car = Car.new(car_params)
     if @car.save
       redirect_to root_path
     else
       render :new
     end
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to action: :show
    end
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    redirect_to root_path
  end

  private
  def car_params
    params.require(:car).permit(:car, :number, :price, :name, :date, :front_id, :body_id, :paint_id,:front_date, :body_date, :paint_date)
  end
end
