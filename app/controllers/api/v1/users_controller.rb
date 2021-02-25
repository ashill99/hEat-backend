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

    # def profile 
    #     # byebug 
    #     # read the token from the auth header 
    #     auth_headers = request.headers["Authorization"]
    #     token = auth_headers.split.last
    #     #decode the token 

    #     begin 

    #         payload = JWT.decode(token, Rails.application.secrets.secret_key_base, true, { algorithm: 'HS256' })
    #         # get the user id 
    #         user_id = payload[0]["user_id"]
    #         # find the user 
    #         user = User.find(user_id)
    #         render json: user 
    #     rescue 
    #         render json: { error: "nice try, pal."}, status: :unauthorized
    #     end
    # end 

    def profile 
        user = AuthorizeRequest.new(request.headers).user
        if user 
            render json: user 
        else 
            render json: { error: "nice try, pal."}, status: :unauthorized
        end
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
