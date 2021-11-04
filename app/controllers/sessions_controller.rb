require 'digest'
require 'jwt'

class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: sessions_params[:name])
    if @user&.authenticate(sessions_params[:password])
      render json: { token: encode_token, name: @user['name'], user: @user.id }, status: :ok
    else
      render json: { error: 'Username or password is incorrect!' }, status: :unauthorized
    end
  end

  def sessions_params
    params.require(:session).permit(:name, :password)
  end

  def authenticate_user
    token = request.headers['token']
    begin
      payload = JWT.decode(token, secret_key, false)
      @user = User.find(JSON.parse(payload[0])['id'])
    rescue JWT::DecodeError => e
      render json: { error: e.message }, status: :unauthorized
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e.message }, status: :unauthorized
    end
  end

  def encode_token
    payload = { 'id' => @user[:id], 'created_at' => @user[:created_at] }
    JWT.encode(payload.to_json, secret_key, 'none')
  end

  private

  def secret_key
    'kisw@hili7!'
  end
end
