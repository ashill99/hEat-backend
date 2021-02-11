class Api::V1::FavouritesController < ApplicationController

    def show 
        @favourite = Favourite.find(params[:id])
        render json: @favourite 
    end

    def index
        @favourites = Favourite.all
        render json: @favourites
    end

    def new
        @favourite = Favourite.new
    end

    # def edit
    #     @favourite = Favourite.find(params[:id])
    # end

    def update
        @favourite = Favourite.find(params[:id])
        @favourite.update(favourite_params)
    end

    def create 
        @favourite = Favourite.create(favourite_params)
        render json: @favourite
    end 

    def destroy 
        @favourite = Favourite.find(params[:id])
        @favourite.destroy  
    end

    private

    def favourite_params
        params.require(:favourite).permit(:id, :user_id, :location_id)
    end

end
