class PlantsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])

    @plant.garden = @garden

    if @plant.save
      redirect_to @garden
    else
      render :new
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.delete

    redirect_to @plant.garden
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
