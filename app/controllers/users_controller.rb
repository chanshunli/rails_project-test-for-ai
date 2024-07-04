class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:login]
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def login
    phone_number = params[:phone_number]
    if valid_phone_number?(phone_number)
      @user = User.find_by(phone_number: phone_number)
      if @user
        sign_in(@user)
        render json: { message: "Login successful" }
      else
        render json: { error: "User not found" }, status: :not_found
      end
    else
      render json: { error: "Invalid phone number" }, status: :unprocessable_entity
    end
  end

  private

  def valid_phone_number?(phone_number)
    # implement phone number validation logic here
    # return true if phone number is valid, false otherwise
  end

  def sign_in(user)
    # implement sign in logic here
  end
end
