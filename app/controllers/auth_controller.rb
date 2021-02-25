class AuthController < ApplicationController

  def register
    #create a new uswer 
    # byebug
    register_params = params.permit(:username, :password, :email)
    user = User.create(register_params)
    if user.valid?
    render json: user
    else
      render json: { error: user.errors.full_messages}, status: :bad_request
    end
  end

  def login 
    #find user 
    user = User.find_by(username: params[:username])
    #authenticate password 
    if user && user.authenticate(params[:password])
          #if the user is authenticated, send back... user object
      render json: user 
    else 
      #if not, send an error
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end
end
