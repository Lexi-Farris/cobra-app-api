class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all 
    render :index 
  end

  def show 
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end

  def create
    @favorite = Favorite.create(
      class_name: params[:class_name],
      studio_name: params[:studio_name],
      instructor_name: params[:instructor_name]
    )
    render :show
  end

end
