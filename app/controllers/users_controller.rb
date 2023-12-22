class UsersController < ApplicationController
  def create 
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      city: params[:city],
      state: params[:state],
      zipcode: params[:zipcode]
    )
    if user.save 
      render json: {message: "User created."}, status: :created
    else 
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end



end
