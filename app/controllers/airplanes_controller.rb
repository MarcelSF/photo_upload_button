class AirplanesController < ApplicationController
  def index
    @airplanes = Airplane.all
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.new(airplane_params)
    if @airplane.save
      redirect_to airplanes_path
    else
      render :index
    end
  end

  private

  def airplane_params
    params.require(:airplane).permit(:name, :photo)
  end
end
