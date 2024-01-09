class SavedStudiosController < ApplicationController
  before_action :authenticate_user

  def index
    render json: current_user.saved_studios
  end

  def show
    @saved_studio = saved_studio.find_by(id: params[:id])
    render:show
  end
end
