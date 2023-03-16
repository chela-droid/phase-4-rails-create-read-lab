class PlantsController < ApplicationController
def index
    plants = Plant.all
    render json: plants, status: :ok
end
def show
    plants = Plant.find_by(id: params[:id])
    render json: plants 
end
def create
    # byebug
    plants = Plant.create(plants_params)
    # if plants.save
    render json: plants, status: :created
    # else
        # render json plants.errors status: : not created
end

 private

def plants_params
params.permit(:name, :image, :price)
end
end
