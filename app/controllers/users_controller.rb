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

    def update
      @user = User.find_by(id: params[:id])
      @user.update(
        name: params[:name] || @user.name, 
        email: params[:email] || @user.email,
        password_digest: params[:password_digest] || @user.password_digest,
        zipcode: params[:zipcode] || @user.password,
        city: params[:city] || @user.city,
        state: params[:state] || @user.state
      )
      if @user.save
      render json: {message: "Update successful!"}
      else
        render json: {errors: @user.errors.full_messages}, status: 400
    end
  end

  


end
