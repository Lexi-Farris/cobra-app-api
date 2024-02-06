class SavedStudiosController < ApplicationController
  before_action :authenticate_user

  def index
    render json: current_user.saved_studios
  end

  def create
    pp params[:studio]
    @saved_studio = SavedStudio.create(
      name: params[:studio][:name],
      address: params[:studio][:address],
      # studio_id: params[:studio][:studio_id],
      website: params[:studio][:website],
      user_id: current_user.id 

    )
    if @saved_studio.valid?
      render json: { message: 'Studio saved successfully' }, status: :created
    else
     
      render json: { errors: @saved_studio.errors.full_messages }, status: :unprocessable_entity
    end

  end


  def show
    @saved_studio = SavedStudio.find_by(id: params[:id])
    render :show
  end

  def destroy
    @saved_studio = SavedStudio.find_by(id: params[:id])
    @saved_studio.destroy
    render json: {message: "#{@saved_studio.address} Successfully Deleted"}
  end

end
