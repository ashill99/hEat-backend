class Api::V1::UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        render json: @user 
    end
    
    def index
        @users = User.all
        render json: @users
    end

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
    end

    # def create
    #     register_params = params.permit(:username, :password, :email)
    #     @user = User.create(register_params)
    #     if @user.valid?
    #     render json: @user
    #     else
    #       render json: { error: @user.errors.full_messages}, status: :bad_request
    #     end

    #   end


    private

    def user_params
        params.require(:user).permit(:id, :username, :password, :email)
    end
end
