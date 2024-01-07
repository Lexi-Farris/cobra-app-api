class SavedStudiosController < ApplicationController
  before_action :authenticate_user

  def index
    render json: current_user.saved_studios
  end

end
