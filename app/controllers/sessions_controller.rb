require 'digest'

class SessionsController < ApplicationController
  include JWTHelper

  def create
    @user = User.find_by(name: sessions_params[:name])
    if @user&.authenticate(sessions_params[:password])
      render json: { token: encode_token, name: @user['name'] }, status: :ok
    else
      render json: { error: 'Username or password is incorrect!' }, status: :unauthorized
    end
  end

  def sessions_params
    params.require(:session).permit(:name, :password)
  end
end
