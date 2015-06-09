class DriversController < ApplicationController

  before_filter :set_driver, only: [:show, :edit, :update, :destroy]

  def index
    @drivers = Driver.order(:name).all
  end

  def show
  end

  def new
    @driver = Driver.new
  end

  def create
    driver = Driver.create(driver_params)
    redirect_to driver_path(driver)
  end

  def edit
  end

  def update
    @driver.update(driver_params)
    redirect_to driver_path(@driver)
  end

  def destroy
    @driver.destroy
    redirect_to drivers_path
  end

  protected

  def set_driver
    @driver = Driver.find(params[:id])
  end

  def driver_params
    params
      .require(:driver)
      .permit(:name, :license_plate, :email)
  end
end
