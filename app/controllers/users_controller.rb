require 'digest'

class UsersController < ApplicationController

  def create
    new_user = users_params
    @user = User.create(name: new_user[:name], password: new_user[:password])
    if @user.save
      render json: { token: encode_token }, status: :ok
    else
      render json: { error: "Couldn't Sign Up", details: @user.errors }, status: :unprocessable_entity
    end
  end

  def users_params
    params.permit(:name, :password)
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
    'Kiswahili@7!'
  end
end
