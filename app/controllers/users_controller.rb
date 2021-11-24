require 'digest'
require 'user_helper'

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

  def show
    @user = User.find(params[:id])
    if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  def users_params
    params.permit(:name, :password)
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
