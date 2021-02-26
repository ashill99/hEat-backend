class AuthController < ApplicationController

  def register
    #create a new uswer 
    # byebug
    register_params = params.permit(:username, :password, :email)
    user = User.create(register_params)
    if user.valid?
      secret = Rails.application.secrets.secret_key_base
      # also send back a token so they they can use to re-authenticate themsleves
      token = JWT.encode({ user_id: user.id }, secret, "HS256")

      render json: { user: UserSerializer.new(user), token: token }, status: :created
    else
      render json: { error: user.errors.full_messages}, status: :bad_request
    end
  end

  def login 
    #find user 
    user = User.find_by(email: params[:email])
    #authenticate password 
    if user && user.authenticate(params[:password])
          #if the user is authenticated, send back... user object
      secret = Rails.application.secrets.secret_key_base
      # also send back a token so they they can use to re-authenticate themsleves
      token = JWT.encode({ user_id: user.id }, secret, "HS256")

      render json: { user: UserSerializer.new(user), token: token } 
    else 
      #if not, send an error
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end
end
