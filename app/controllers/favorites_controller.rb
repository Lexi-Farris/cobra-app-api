class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all 
    render :index 
  end

  def show 
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end

end
