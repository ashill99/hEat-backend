class Api::V1::LocationsController < ApplicationController

    def show 
        @location = Location.find(params[:id])
        render json: @location 
    end

    def index
        @locations = Location.all
        render json: @locations
    end

    def new
        @location = Location.new
    end

    def edit
        @location = Location.find(params[:id])
    end

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)
        render json: @location
    end

    def create 
        @location = Location.create(location_params)
        render json: @location
    end 

    # def destroy 
    #     location = Location.find(params[:id])
    #     location.destroy  
    # end

    private

    def location_params
        params.require(:location).permit(:id, :name, :address, :restOrBar, :restType, :longitude, :latitude, :imgUrl, :website, :hours, :menu)
    end
end
