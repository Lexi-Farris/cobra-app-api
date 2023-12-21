class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all 
    render :index 
  end

  
end
